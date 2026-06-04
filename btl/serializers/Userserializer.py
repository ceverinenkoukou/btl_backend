from rest_framework import serializers
from django.contrib.auth.password_validation import validate_password
from btl.models import RemoteUser


class RemoteUserSerializer(serializers.ModelSerializer):
    role_display = serializers.CharField(source='get_role_display', read_only=True)

    class Meta:
        model = RemoteUser
        fields = [
            'id', 'email', 'username', 'name', 'role',
            'role_display', 'is_active', 'is_password_changed', 'created_at'
        ]
        read_only_fields = ['id', 'created_at', 'is_password_changed']


class CreateUserSerializer(serializers.ModelSerializer):
    """
    Utilisé par l'admin pour créer un utilisateur (hôtesse, superviseur, entreprise).
    Le mot de passe est optionnel : s'il n'est pas fourni, un mot de passe
    provisoire est généré automatiquement dans la vue.
    """
    password = serializers.CharField(write_only=True, required=False, allow_blank=True)

    class Meta:
        model = RemoteUser
        fields = ['id', 'email', 'username', 'name', 'role', 'password']
        read_only_fields = ['id']

    def validate_role(self, value):
        if value == RemoteUser.Roles.ADMIN:
            raise serializers.ValidationError(
                "La création d'un compte Administrateur via l'API est interdite."
            )
        return value

    def validate_email(self, value):
        if RemoteUser.objects.filter(email=value).exists():
            raise serializers.ValidationError("Un utilisateur avec cet email existe déjà.")
        return value


class ChangePasswordSerializer(serializers.Serializer):
    old_password = serializers.CharField(required=True, write_only=True)
    new_password = serializers.CharField(required=True, write_only=True)

    def validate_old_password(self, value):
        user = self.context['request'].user
        if not user.check_password(value):
            raise serializers.ValidationError("L'ancien mot de passe est incorrect.")
        return value

    def validate_new_password(self, value):
        validate_password(value)
        return value