from rest_framework import serializers
from btl.models import RemoteUser


class TeamMemberSerializer(serializers.ModelSerializer):
    """Serializer léger pour afficher les membres de l'équipe."""
    role_display = serializers.CharField(source='get_role_display', read_only=True)

    class Meta:
        model = RemoteUser
        fields = ['id', 'name', 'email', 'role', 'role_display']