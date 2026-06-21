--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1       Can add log entry       1       add_logentry
2       Can change log entry    1       change_logentry
3       Can delete log entry    1       delete_logentry
4       Can view log entry      1       view_logentry
5       Can add permission      3       add_permission
6       Can change permission   3       change_permission
7       Can delete permission   3       delete_permission
8       Can view permission     3       view_permission
9       Can add group   2       add_group
10      Can change group        2       change_group
11      Can delete group        2       delete_group
12      Can view group  2       view_group
13      Can add content type    4       add_contenttype
14      Can change content type 4       change_contenttype
15      Can delete content type 4       delete_contenttype
16      Can view content type   4       view_contenttype
17      Can add session 5       add_session
18      Can change session      5       change_session
19      Can delete session      5       delete_session
20      Can view session        5       view_session
21      Can add Blacklisted Token       6       add_blacklistedtoken
22      Can change Blacklisted Token    6       change_blacklistedtoken
23      Can delete Blacklisted Token    6       delete_blacklistedtoken
24      Can view Blacklisted Token      6       view_blacklistedtoken
25      Can add Outstanding Token       7       add_outstandingtoken
26      Can change Outstanding Token    7       change_outstandingtoken
27      Can delete Outstanding Token    7       delete_outstandingtoken
28      Can view Outstanding Token      7       view_outstandingtoken
29      Can add remote user     33      add_remoteuser
30      Can change remote user  33      change_remoteuser
31      Can delete remote user  33      delete_remoteuser
32      Can view remote user    33      view_remoteuser
33      Can add entreprise      10      add_entreprise
34      Can change entreprise   10      change_entreprise
35      Can delete entreprise   10      delete_entreprise
36      Can view entreprise     10      view_entreprise
37      Can add campagne        8       add_campagne
38      Can change campagne     8       change_campagne
39      Can delete campagne     8       delete_campagne
40      Can view campagne       8       view_campagne
41      Can add goodie  13      add_goodie
42      Can change goodie       13      change_goodie
43      Can delete goodie       13      delete_goodie
44      Can view goodie 13      view_goodie
45      Can add historical campagne     14      add_historicalcampagne
46      Can change historical campagne  14      change_historicalcampagne
47      Can delete historical campagne  14      delete_historicalcampagne
48      Can view historical campagne    14      view_historicalcampagne
49      Can add historical entreprise   16      add_historicalentreprise
50      Can change historical entreprise        16      change_historicalentreprise
51      Can delete historical entreprise        16      delete_historicalentreprise
52      Can view historical entreprise  16      view_historicalentreprise
53      Can add historical goodie       19      add_historicalgoodie
54      Can change historical goodie    19      change_historicalgoodie
55      Can delete historical goodie    19      delete_historicalgoodie
56      Can view historical goodie      19      view_historicalgoodie
57      Can add historical produit      21      add_historicalproduit
58      Can change historical produit   21      change_historicalproduit
59      Can delete historical produit   21      delete_historicalproduit
60      Can view historical produit     21      view_historicalproduit
61      Can add historical remote user  24      add_historicalremoteuser
62      Can change historical remote user       24      change_historicalremoteuser
63      Can delete historical remote user       24      delete_historicalremoteuser
64      Can view historical remote user 24      view_historicalremoteuser
65      Can add historical site 25      add_historicalsite
66      Can change historical site      25      change_historicalsite
67      Can delete historical site      25      delete_historicalsite
68      Can view historical site        25      view_historicalsite
69      Can add produit 30      add_produit
70      Can change produit      30      change_produit
71      Can delete produit      30      delete_produit
72      Can view produit        30      view_produit
73      Can add degustation     9       add_degustation
74      Can change degustation  9       change_degustation
75      Can delete degustation  9       delete_degustation
76      Can view degustation    9       view_degustation
77      Can add site    34      add_site
78      Can change site 34      change_site
79      Can delete site 34      delete_site
80      Can view site   34      view_site
81      Can add historical vente        28      add_historicalvente
82      Can change historical vente     28      change_historicalvente
83      Can delete historical vente     28      delete_historicalvente
84      Can view historical vente       28      view_historicalvente
85      Can add historical stock goodie site    27      add_historicalstockgoodiesite
86      Can change historical stock goodie site 27      change_historicalstockgoodiesite
87      Can delete historical stock goodie site 27      delete_historicalstockgoodiesite
88      Can view historical stock goodie site   27      view_historicalstockgoodiesite
89      Can add historical degustation  15      add_historicaldegustation
90      Can change historical degustation       15      change_historicaldegustation
91      Can delete historical degustation       15      delete_historicaldegustation
92      Can view historical degustation 15      view_historicaldegustation
93      Can add stock goodie site       36      add_stockgoodiesite
94      Can change stock goodie site    36      change_stockgoodiesite
95      Can delete stock goodie site    36      delete_stockgoodiesite
96      Can view stock goodie site      36      view_stockgoodiesite
97      Can add vente   37      add_vente
98      Can change vente        37      change_vente
99      Can delete vente        37      delete_vente
100     Can view vente  37      view_vente
101     Can add promotion       31      add_promotion
102     Can change promotion    31      change_promotion
103     Can delete promotion    31      delete_promotion
104     Can view promotion      31      view_promotion
105     Can add historical promotion    22      add_historicalpromotion
106     Can change historical promotion 22      change_historicalpromotion
107     Can delete historical promotion 22      delete_historicalpromotion
108     Can view historical promotion   22      view_historicalpromotion
109     Can add gain promotion  12      add_gainpromotion
110     Can change gain promotion       12      change_gainpromotion
111     Can delete gain promotion       12      delete_gainpromotion
112     Can view gain promotion 12      view_gainpromotion
113     Can add historical gain goodie  17      add_historicalgaingoodie
114     Can change historical gain goodie       17      change_historicalgaingoodie
115     Can delete historical gain goodie       17      delete_historicalgaingoodie
116     Can view historical gain goodie 17      view_historicalgaingoodie
117     Can add historical gain promotion       18      add_historicalgainpromotion
118     Can change historical gain promotion    18      change_historicalgainpromotion
119     Can delete historical gain promotion    18      delete_historicalgainpromotion
120     Can view historical gain promotion      18      view_historicalgainpromotion
121     Can add gain goodie     11      add_gaingoodie
122     Can change gain goodie  11      change_gaingoodie
123     Can delete gain goodie  11      delete_gaingoodie
124     Can view gain goodie    11      view_gaingoodie
125     Can add historical objectif site        20      add_historicalobjectifsite
126     Can change historical objectif site     20      change_historicalobjectifsite
127     Can delete historical objectif site     20      delete_historicalobjectifsite
128     Can view historical objectif site       20      view_historicalobjectifsite
129     Can add historical rapport journalier   23      add_historicalrapportjournalier
130     Can change historical rapport journalier        23      change_historicalrapportjournalier
131     Can delete historical rapport journalier        23      delete_historicalrapportjournalier
132     Can view historical rapport journalier  23      view_historicalrapportjournalier
133     Can add historical site produit prix    26      add_historicalsiteproduitprix
134     Can change historical site produit prix 26      change_historicalsiteproduitprix
135     Can delete historical site produit prix 26      delete_historicalsiteproduitprix
136     Can view historical site produit prix   26      view_historicalsiteproduitprix
137     Can add objectif site   29      add_objectifsite
138     Can change objectif site        29      change_objectifsite
139     Can delete objectif site        29      delete_objectifsite
140     Can view objectif site  29      view_objectifsite
141     Can add rapport journalier      32      add_rapportjournalier
142     Can change rapport journalier   32      change_rapportjournalier
143     Can delete rapport journalier   32      delete_rapportjournalier
144     Can view rapport journalier     32      view_rapportjournalier
145     Can add site produit prix       35      add_siteproduitprix
146     Can change site produit prix    35      change_siteproduitprix
147     Can delete site produit prix    35      delete_siteproduitprix
148     Can view site produit prix      35      view_siteproduitprix
\.


--
-- Data for Name: btl_campagne; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_campagne (id, created_at, updated_at, is_deleted, nom, date_debut, date_fin, description, entreprise_id, objectif_degustations, objectif_ventes, type_campagne, type_recompense) FROM stdin;
d36107b8-f8fd-4250-a37b-2920a2e92199    2026-06-11 17:19:42.769437+00   2026-06-11 17:19:42.769446+00        f       33 EXPORT CHR   2026-06-11      2026-07-19      \N      22898852-840c-4c01-9d7b-89a68ff5cce4 \N      5760    VENTE   PROMOTIONS
885cf097-4539-44fb-9231-c023f5b0eb9d    2026-06-17 22:32:07.571972+00   2026-06-17 22:32:07.571982+00        f       TEST    2026-06-25      2026-06-30      \N      d871013c-b3b7-451c-af35-800d1ab9538c 400     3000    DEGUSTATION_VENTE       GOODIES
1529df21-8811-4562-b88c-ac3652cf9010    2026-06-17 19:39:21.648564+00   2026-06-18 06:58:32.299019+00        t       CAMPAGNE TEST   2026-06-17      2026-07-04      \N      d871013c-b3b7-451c-af35-800d1ab9538c \N      \N      VENTE   PROMOTIONS
aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    2026-06-18 08:26:22.319293+00   2026-06-18 08:26:22.319306+00        f       TEST 2  2026-06-18      2026-06-28      \N      d871013c-b3b7-451c-af35-800d1ab9538c \N      \N      VENTE   PROMOTIONS
\.


--
-- Data for Name: btl_campagne_hotesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_campagne_hotesses (id, campagne_id, remoteuser_id) FROM stdin;
1       d36107b8-f8fd-4250-a37b-2920a2e92199    90c7cf46-e3ba-4172-8391-7cc53b7379c8
2       d36107b8-f8fd-4250-a37b-2920a2e92199    ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea
3       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6
5       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1
6       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4
7       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156
8       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c
9       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4
10      d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd
11      1529df21-8811-4562-b88c-ac3652cf9010    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
12      885cf097-4539-44fb-9231-c023f5b0eb9d    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
13      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
\.


--
-- Data for Name: btl_campagne_produits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_campagne_produits (id, campagne_id, produit_id) FROM stdin;
\.


--
-- Data for Name: btl_campagne_superviseurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_campagne_superviseurs (id, campagne_id, remoteuser_id) FROM stdin;
2       d36107b8-f8fd-4250-a37b-2920a2e92199    2dfa4f79-ee26-42bc-a654-374d3b5044d0
3       d36107b8-f8fd-4250-a37b-2920a2e92199    20c325a0-f0bf-43cd-8a37-3461b093037f
\.


--
-- Data for Name: btl_degustation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_degustation (id, created_at, updated_at, is_deleted, nom_client, tranche_age, note_gout, intention_achat, a_achete, campagne_id, hotesse_id, produit_id, site_id) FROM stdin;
bcd48ac1-c427-4cb5-9796-bc3fe8398c3d    2026-06-11 18:48:30.590055+00   2026-06-11 18:48:30.590064+00        f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
adf11c8b-51fb-4950-bcef-9b85e5560249    2026-06-11 18:49:02.116433+00   2026-06-11 18:49:02.116444+00        f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
10e6604e-6bd9-425b-9c3f-6c82593e6e74    2026-06-11 19:11:42.572539+00   2026-06-11 19:11:42.57255+00 f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
86488539-e4e3-44e3-9a33-fc8c5bb2a3d5    2026-06-11 19:13:10.626222+00   2026-06-11 19:13:10.626233+00        f       Evan’s  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
a0edd18c-a9a5-4700-ad52-a5d40466d8ae    2026-06-11 19:13:34.28169+00    2026-06-11 19:13:34.281701+00        f       Irene   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
0ffc75a1-1c63-4111-aac5-b92af133a3ef    2026-06-11 19:14:12.336392+00   2026-06-11 19:14:12.336401+00        f       Frédéric        26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
f364046a-59d6-41aa-b24e-a6c1d52041d6    2026-06-11 19:16:39.676225+00   2026-06-11 19:16:39.676236+00        f       Gislin  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
50e8ed03-9bc8-4ce2-924b-e8fc75abc576    2026-06-11 19:18:43.15595+00    2026-06-11 19:18:43.15596+00 f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0adf6f29-8419-4992-aed9-1cc5580045ea    2026-06-11 19:23:17.126926+00   2026-06-11 19:23:17.126937+00        f       \N      18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a0641f60-1375-4381-9ba7-807e13ef7438    2026-06-11 19:27:19.785055+00   2026-06-11 19:27:19.785063+00        f       Franck  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
68516fe0-e3aa-474c-b8cc-46b8890de0b5    2026-06-11 19:27:51.032073+00   2026-06-11 19:27:51.032082+00        f       Bertrand        36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
8a746555-06eb-43cf-a25b-5e1420d4221d    2026-06-11 19:28:46.38028+00    2026-06-11 19:28:46.380289+00        f       Ruth    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
3c577667-a4a7-4a5d-9bb0-8295042c0f7d    2026-06-11 19:29:52.559663+00   2026-06-11 19:29:52.559673+00        f       Irene   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
6d8ce665-2cff-439c-907e-fdd97853c1fc    2026-06-11 19:41:57.135818+00   2026-06-11 19:41:57.135827+00        f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0510614b-45a7-443f-b316-1e1838759fe4    2026-06-11 19:44:13.339962+00   2026-06-11 19:44:13.339972+00        f       André   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
854e3b99-d43c-4a78-a88b-1a1ebf92348c    2026-06-11 19:44:43.390132+00   2026-06-11 19:44:43.390142+00        f       Patrick 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
ee60143e-80ae-4429-a7c1-db5c95a986d2    2026-06-11 19:51:00.129408+00   2026-06-11 19:51:00.129419+00        f       Norbert 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
bb2ef280-99a2-4944-9490-a1c1b8bfa93b    2026-06-11 20:05:18.875304+00   2026-06-11 20:05:18.875324+00        f       Audray  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
f244a756-3736-4980-bdf1-efa9308003e7    2026-06-11 20:32:48.227478+00   2026-06-11 20:32:48.227488+00        f       Udain   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
5a4eeb0f-e82d-41a7-a2fe-0f80f5221e7a    2026-06-11 20:36:10.226888+00   2026-06-11 20:36:10.2269+00  f       Kevin   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
d52aa490-e4cf-4bff-b926-24b80df0c432    2026-06-11 20:37:32.032204+00   2026-06-11 20:37:32.032212+00        f       Elodie  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
35cbbe1b-6d2c-46fd-9fde-d70d3627e5e2    2026-06-11 20:41:52.742521+00   2026-06-11 20:41:52.742531+00        f       \N      26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a0e940b0-1469-4523-92ad-dfe39497d43f    2026-06-11 21:34:30.314501+00   2026-06-11 21:34:30.314511+00        f       Gildas  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
b1a7912b-d3c8-49ec-b3b5-ed3fb2dc18db    2026-06-16 17:47:14.711599+00   2026-06-16 17:47:14.711609+00        f       Blanchard       36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e888f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
1b881284-7237-4fbe-b731-e90867505c2d    2026-06-16 17:47:45.950293+00   2026-06-16 17:47:45.950302+00        f       Eric    36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5e3b940f-01ed-476b-a277-f4a609c42bf8    2026-06-16 17:53:47.307696+00   2026-06-16 17:53:47.307707+00        f       Jean    36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
b5a6a4ea-34e0-43eb-b1b0-7ea070ceab31    2026-06-16 18:16:50.907332+00   2026-06-16 18:16:50.907342+00        f       Pierre  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
50efb98c-af25-4a12-a162-2d25d7f24cb9    2026-06-16 18:27:50.391469+00   2026-06-16 18:27:50.391478+00        f       Gwen    18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
469bb4b4-9ec6-4a14-90de-3e1e4bbc2156    2026-06-16 18:31:16.64432+00    2026-06-16 18:31:16.644329+00        f       Ivane   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
166d6603-7303-43a0-a9fe-d7ae6bbc8e04    2026-06-16 18:33:34.618213+00   2026-06-16 18:33:34.618224+00        f       Bryan   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
9357ddd4-f568-42b9-a273-121fa8076e9b    2026-06-16 18:36:15.738309+00   2026-06-16 18:36:15.738318+00        f       Patrick 36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
ccdefab1-a2b0-4f79-ab99-244c42adeb16    2026-06-16 18:37:59.952276+00   2026-06-16 18:37:59.952285+00        f       Benjamin        18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
d3f3becf-0bad-4910-9c1c-6fb5b7125fb9    2026-06-16 18:39:28.698225+00   2026-06-16 18:39:28.698236+00        f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
751446e2-2ae6-455f-bed4-f828e1ed45fe    2026-06-16 18:39:40.602552+00   2026-06-16 18:39:40.602562+00        f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7f12569e-cba9-4b2b-8e7f-9b8c928ff024    2026-06-16 18:43:43.960301+00   2026-06-16 18:43:43.96031+00 f       Anicet  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a180add1-dad4-4faa-9ec1-b03f2b922769    2026-06-16 18:43:56.866029+00   2026-06-16 18:43:56.86604+00 f       Ali     26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
3d0a5029-3cbd-4b26-8106-f9634de09c03    2026-06-16 18:46:09.51334+00    2026-06-16 18:46:09.51335+00 f       Johny   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
6afa83a9-bf73-4c32-9382-5194a50a821d    2026-06-16 18:46:14.534199+00   2026-06-16 18:46:14.534209+00        f       Ange    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
81651d03-c292-4ffa-9aa0-ce61848dde04    2026-06-16 18:47:19.477053+00   2026-06-16 18:47:19.477072+00        f       Murphy  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
e03f5be5-d0db-4699-ae83-b6b22e188d0d    2026-06-16 18:51:30.294431+00   2026-06-16 18:51:30.294455+00        f       Leslie  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
63f3efdd-a2cf-415d-a9c2-b549e5a0c596    2026-06-16 18:53:26.922229+00   2026-06-16 18:53:26.92224+00 f       Henry   18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
55c4b479-9906-4721-9465-ad840f818ae7    2026-06-16 18:54:53.809368+00   2026-06-16 18:54:53.809377+00        f       Rodric  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
2b6cc201-e9b4-4829-a925-5e10598c4a39    2026-06-16 18:55:25.938464+00   2026-06-16 18:55:25.938472+00        f       \N      26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a1d12ad5-9066-4eed-8561-ec93cc474888    2026-06-16 19:01:30.100747+00   2026-06-16 19:01:30.100757+00        f       Fredy   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0cf6df49-2579-460d-9738-194385ebdd67    2026-06-16 19:04:55.480063+00   2026-06-16 19:04:55.480073+00        f       Fredy   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
dd16a147-9d37-43d4-ac9a-fa35ae606cb2    2026-06-16 19:13:26.515908+00   2026-06-16 19:13:26.515918+00        f       Amour   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
864b59a5-acc2-43ed-9b75-d674acae11fa    2026-06-16 19:22:53.882925+00   2026-06-16 19:22:53.882933+00        f       Smaelle 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
30d625b0-0460-4f87-8c0f-8a36dd1e3813    2026-06-16 19:27:49.962301+00   2026-06-16 19:27:49.96231+00 f       Christ  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
e85afe98-952a-4f6b-8f38-2d67462a8f1c    2026-06-16 19:31:20.927968+00   2026-06-16 19:31:20.927977+00        f       \N      26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
135841a7-decf-4152-9aff-9eb15271b59c    2026-06-16 19:33:44.364632+00   2026-06-16 19:33:44.364642+00        f       Maria   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
63f4c1ee-77d3-484f-9f0b-6075e3222048    2026-06-16 19:36:02.519088+00   2026-06-16 19:36:02.519098+00        f       Scott   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
c51038d5-ed05-4656-90be-d21eda807772    2026-06-16 19:37:19.306889+00   2026-06-16 19:37:19.306898+00        f       Edgard  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
7d6f5484-8c1a-4701-99a4-a110ac98eb2f    2026-06-16 20:00:17.040091+00   2026-06-16 20:00:17.040102+00        f       Christ  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
8bd0705e-8007-482b-9ed9-b22be7e72630    2026-06-16 20:01:13.306492+00   2026-06-16 20:01:13.306501+00        f       Smaelle 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
074b79bc-7225-4de5-9737-9fe59b1c74a5    2026-06-16 20:04:39.548347+00   2026-06-16 20:04:39.548356+00        f       Willy   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
79825209-9ee2-4be3-abea-598ee15e86e1    2026-06-16 20:05:45.398885+00   2026-06-16 20:05:45.398898+00        f       Jeff    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a15310b7-4fc1-4b73-8867-89dddc8e3c5d    2026-06-16 20:12:09.279952+00   2026-06-16 20:12:09.279966+00        f       Mz      26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0df1dc02-401e-47f5-b4b3-6c1bf4beef6d    2026-06-16 20:12:28.511099+00   2026-06-16 20:12:28.51111+00 f       \N      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
304c81c9-0208-497b-9926-05f1e9e78989    2026-06-16 20:12:30.551967+00   2026-06-16 20:12:30.551977+00        f       Marie   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
93c01166-09eb-4e6e-94c2-4626b07049bd    2026-06-16 20:19:03.336564+00   2026-06-16 20:19:03.336573+00        f       Alexandre       36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e888f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a9ff19c5-cf3c-4910-b4bd-6cdc202d7e05    2026-06-16 20:24:55.190317+00   2026-06-16 20:24:55.190327+00        f       Dg      36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5a0a53a4-be49-43a2-adcc-8e65dbbf06da    2026-06-16 20:25:09.00805+00    2026-06-16 20:25:09.00806+00 f       Randy   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
049c6e92-5423-4b60-bcdb-cd3084e5895f    2026-06-16 20:28:41.87926+00    2026-06-16 20:28:41.87927+00 f       Lucapi  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
43b420f0-60fd-4976-8093-497002ccd516    2026-06-16 20:28:45.743787+00   2026-06-16 20:28:45.743797+00        f       Junior  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
b7a916de-29ec-4c55-ab94-fe585b163111    2026-06-16 20:31:48.809078+00   2026-06-16 20:31:48.809089+00        f       Lucapy  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
79bd5834-18e6-42b8-a7d3-218a7dc9e759    2026-06-16 21:22:42.881438+00   2026-06-16 21:22:42.881448+00        f       Luc     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
455a56bf-1a46-4d7c-82a0-913c2b628fcc    2026-06-16 22:07:41.033778+00   2026-06-16 22:07:41.033792+00        f       Kévin   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
ae2c83a0-204c-4da6-bed9-4b9446b87aa7    2026-06-16 22:08:12.735884+00   2026-06-16 22:08:12.735897+00        f       Océane  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
a5d07e21-f566-4f55-9748-86e16b9944cb    2026-06-16 22:09:21.95644+00    2026-06-16 22:09:21.956451+00        f       Bienvenue       26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
7b17c6fc-e7dc-4fe2-b6b7-8c30172b3849    2026-06-17 16:26:19.80222+00    2026-06-17 16:26:19.802231+00        f       Bryan   18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
fdb0e8ee-cde6-4d90-96b8-587cdbcfb038    2026-06-17 16:52:31.359431+00   2026-06-17 16:52:31.359441+00        f       Jean    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
22266cb3-11a1-44a9-aafe-54b016a9ffa4    2026-06-17 16:55:27.04906+00    2026-06-17 16:55:27.049072+00        f       Jack    36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
6201a8a6-1547-4b6b-96ba-c9a85b8aa43b    2026-06-17 16:58:25.238972+00   2026-06-17 16:58:25.238982+00        f       Jacques 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
bd29cdea-5e6c-47ee-89d1-f7ab4ef886c4    2026-06-17 17:11:48.742192+00   2026-06-17 17:11:48.742202+00        f       Christ  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
05e1886e-d5bc-40d2-8ec9-1682386bcb4a    2026-06-17 17:12:49.517957+00   2026-06-17 17:12:49.517966+00        f       David   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
a8769d18-6bc7-4f29-9e35-686aa4b9c621    2026-06-17 17:17:36.721602+00   2026-06-17 17:17:36.721612+00        f       Stifleur        26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
358d4022-ad5b-4c89-96fe-e3a2f035d05b    2026-06-17 17:49:06.566557+00   2026-06-17 17:49:06.566567+00        f       Edgard  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
45fb4bd2-ca58-48f2-99e0-4d7d1d17dd54    2026-06-17 18:21:19.363779+00   2026-06-17 18:21:19.363791+00        f       Test    18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    386e4259-2682-44ba-9073-59eb73919e88    31ab0910-ff6c-4f50-abd1-6054890c27b2
99a9ed82-f898-4968-b399-8023cd770b62    2026-06-17 18:28:07.255604+00   2026-06-17 18:28:07.255617+00        f       Henry   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3d661308-a59b-4715-9ce8-276b2cea3189    2026-06-17 18:43:47.976175+00   2026-06-17 18:43:47.976187+00        f       Rikiel  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
6543ca8f-a69b-467c-81ea-2640dbca16d0    2026-06-17 18:45:59.327464+00   2026-06-17 18:45:59.327477+00        f       Sandra  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
b2f7564d-06c4-40b6-b76a-7e35d9fa32a2    2026-06-17 18:46:00.91344+00    2026-06-17 18:46:00.913451+00        f       FLEUR   18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
cdd68318-5a35-4efd-bd53-28ebfc0d07c6    2026-06-17 18:46:27.074516+00   2026-06-17 18:46:27.074525+00        f       Steeve  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
3babc17a-f30f-40e8-a224-206aa0352a64    2026-06-17 18:48:48.461487+00   2026-06-17 18:48:48.461501+00        f       Bertrand        36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e888f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
fc0c891f-af37-4b24-9d43-cc8da07c6807    2026-06-17 18:56:44.94604+00    2026-06-17 18:56:44.94605+00 f       601     26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921995dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd     386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
2cd6f7e5-bee9-45d6-aacf-4a85d71bfa7c    2026-06-17 19:08:21.704539+00   2026-06-17 19:08:21.704549+00        f       Rame    36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
79312937-fcaa-4164-88da-6ea2e16179ae    2026-06-17 19:44:23.726135+00   2026-06-17 19:44:23.726143+00        f       Smaëlle 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
9b2a3058-a51c-4618-b4b3-012f33ff6d3c    2026-06-17 19:50:40.411454+00   2026-06-17 19:50:40.411463+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
e9cb1772-88c5-4633-bfb1-05d50213de72    2026-06-17 19:51:43.860713+00   2026-06-17 19:51:43.860724+00        f       Nino    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
913876fb-cd14-453e-ab58-90aec5d5c868    2026-06-17 19:53:10.188403+00   2026-06-17 19:53:10.188419+00        f       Smaëlle 26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
7b8fb5a9-1902-45f9-b100-05323420cf9e    2026-06-17 19:55:04.05453+00    2026-06-17 19:55:04.05454+00 f       EKOMI EKOMI     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
5827e128-fff0-4971-9586-3e291e1957b8    2026-06-17 19:56:32.157985+00   2026-06-17 19:56:32.157996+00        f       Cavid   26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
18f825f6-9a14-4903-b747-4f62551bd111    2026-06-17 20:08:45.205282+00   2026-06-17 20:08:45.205293+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
0afea9cf-a43a-486a-95e0-02f16c794154    2026-06-17 20:13:49.676196+00   2026-06-17 20:13:49.676207+00        f       Vincent 36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
fa87b1c5-81bd-42fe-a9cc-9cb93753ab65    2026-06-17 20:20:10.237916+00   2026-06-17 20:20:10.237924+00        f       Hugor   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
bf039b1d-6ab7-4b1b-a924-2c0a5caf3372    2026-06-17 20:23:52.08811+00    2026-06-17 20:23:52.088121+00        f       Flo     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
6bbc4877-8eac-4c63-a86f-511e30c81b46    2026-06-17 20:28:49.873421+00   2026-06-17 20:28:49.87343+00 f       Jule    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
9de4ad0e-e501-42b0-a7b7-aaee41cb10fa    2026-06-17 20:30:41.581325+00   2026-06-17 20:30:41.581338+00        f       Eloi    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
1ad29c26-928d-447c-97b4-d03d283b5e81    2026-06-17 20:34:06.813302+00   2026-06-17 20:34:06.813312+00        f       Florez  36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
93e9e35c-0b31-42dd-b37e-2372e095022c    2026-06-17 20:40:50.889589+00   2026-06-17 20:40:50.889599+00        f       Aricle  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
2100bf66-e1b4-4ddf-a3db-a5adcb72c523    2026-06-17 20:45:13.686326+00   2026-06-17 20:45:13.686337+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
770f8472-5d35-453a-a663-c8ee76924c02    2026-06-17 20:49:26.151495+00   2026-06-17 20:49:26.151503+00        f       Ekomi   36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
dfeb0a67-b324-43e9-a9fd-584e559e64a8    2026-06-17 20:52:49.272243+00   2026-06-17 20:52:49.272261+00        f       Smaeelle        26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
d7e70698-7a57-4d86-ae4e-cf7a55288994    2026-06-17 21:04:44.229911+00   2026-06-17 21:04:44.22992+00 f       Tresor  18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
828b91e1-df48-40c3-857c-f1f4180dc981    2026-06-17 21:05:18.680166+00   2026-06-17 21:05:18.680175+00        f       Elysee  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
e4d21270-96d7-4cfa-b31c-b295c9b136dc    2026-06-17 21:07:20.607511+00   2026-06-17 21:07:20.60752+00 f       Smaelle 36_50   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
49349129-1eb6-4488-9adb-7cf4d7a06a99    2026-06-17 21:07:42.662401+00   2026-06-17 21:07:42.662412+00        f       Jull    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
214b8aac-860e-4b6e-9af1-5fc5a80b6dd8    2026-06-17 21:10:52.293899+00   2026-06-17 21:10:52.293908+00        f       Owee    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
22f96b68-1b4d-4e24-95b8-fa94216e56f3    2026-06-17 21:12:13.301382+00   2026-06-17 21:12:13.301392+00        f       Osee    26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
2788a767-7073-4ea3-aac1-af3c5ee7e38b    2026-06-17 21:14:40.857763+00   2026-06-17 21:14:40.857773+00        f       Melvy’ne        26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a3055931ab0910-ff6c-4f50-abd1-6054890c27b2
fec0424d-19e2-4b73-8b95-0b6c56bdbcbc    2026-06-17 22:19:09.327679+00   2026-06-17 22:19:09.327689+00        f       \N      18_25   3       MOYENNE t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
55284e6c-eeae-4593-b69d-a9f24c5b7c4a    2026-06-17 22:38:07.87342+00    2026-06-17 22:38:07.873429+00        f       \N      18_25   3       MOYENNE t       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc
121fa238-7639-413d-887b-648a35d1205e    2026-06-17 22:44:59.34763+00    2026-06-17 22:44:59.347672+00        f       test    18_25   3       MOYENNE f       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc
c7f90f01-7eec-4a16-8e3d-dacb7de5af5b    2026-06-17 22:45:29.16537+00    2026-06-17 22:45:29.165381+00        f       \N      18_25   3       MOYENNE f       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc
d3271e04-350f-4b2d-ac74-c49136e05d3d    2026-06-17 22:52:29.288417+00   2026-06-17 22:52:29.288475+00        f       \N      26_35   2       MOYENNE f       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc
301ebeee-4bb5-4341-8941-c8f574a4dc3c    2026-06-17 22:57:33.363817+00   2026-06-17 22:57:33.363883+00        f       \N      MOINS_18        3       MOYENNE f       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c0ab94840-ff6c-44da-92b9-14bdef894bfc
422a7b80-c69c-44c5-8729-2d2d914425a3    2026-06-17 23:07:13.284278+00   2026-06-17 23:07:13.284352+00        f       \N      18_25   3       MOYENNE f       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc
8f566459-be20-4f56-94a7-5f33ebff45c2    2026-06-18 08:29:29.514195+00   2026-06-18 08:29:29.514203+00        f       \N      18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
dc68e0d6-0438-4a51-b1c9-2ca8f6b17520    2026-06-18 09:29:00.334214+00   2026-06-18 09:29:00.334224+00        f       Edmond  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2
4d84e27e-834c-4b73-bab0-dfc61ab92e26    2026-06-18 11:13:24.458496+00   2026-06-18 11:13:24.458506+00        f       SERGE   18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
70b20073-e859-4e64-bad8-866e0a97df64    2026-06-18 11:25:30.670216+00   2026-06-18 11:25:30.670226+00        f       ef      18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade
e434effc-3564-493a-b69a-f999894e9bc7    2026-06-18 11:26:08.506213+00   2026-06-18 11:26:08.506221+00        f       \N      26_35   3       MOYENNE t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
508a2574-d556-42be-9b7a-b9ea3d40cfd3    2026-06-18 11:30:07.315878+00   2026-06-18 11:30:07.315889+00        f       ZAZIE   18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
4a2eb2c1-07e4-4b5b-8edf-f1c6521332bf    2026-06-18 11:31:06.542876+00   2026-06-18 11:31:06.542884+00        f       ELODIE  18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
f2219b02-dfb8-46e8-8754-3202ccee2d85    2026-06-18 11:31:58.67502+00    2026-06-18 11:31:58.67503+00 f       EVODIE  26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
dcf6d604-68b3-481e-b630-bebe843dfedc    2026-06-18 11:32:28.96189+00    2026-06-18 11:32:28.9619+00  f       ERREUR  36_50   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade
350c2b9d-e360-4224-85aa-066692fcc435    2026-06-18 13:22:57.488629+00   2026-06-18 13:22:57.48864+00 f       ANGIE   26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
7e812823-a5c3-46c2-958a-03b834c508f3    2026-06-18 14:55:35.747226+00   2026-06-18 14:55:35.747237+00        f       ANGIE   18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
6c1f6af4-b311-4a2b-b87f-de1f31f56ab4    2026-06-18 15:04:53.394456+00   2026-06-18 15:04:53.394467+00        f       Bissa   18_25   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
c920a1b6-6091-4817-a09d-ab869d218892    2026-06-18 15:07:17.063575+00   2026-06-18 15:07:17.063584+00        f       YVAN    26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
641ad420-7db9-4ca7-8f29-75936d8de307    2026-06-18 15:22:51.685202+00   2026-06-18 15:22:51.685212+00        f       SERGINE 26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
f577d6a9-4a27-42fe-9a07-9963689cc9e9    2026-06-18 15:27:29.491714+00   2026-06-18 15:27:29.491724+00        f       PEPITE  26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade
c50f25b8-b3e0-4f3e-b85a-b0a4e18d711d    2026-06-18 15:28:13.13958+00    2026-06-18 15:28:13.139588+00        f       AURELIEN        26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae98e0c8c7-248c-480d-a84b-04a8e4b8aade
111dff40-c623-4d80-b7b7-a5ee60a88656    2026-06-18 15:42:54.516282+00   2026-06-18 15:42:54.516293+00        f       SABRINA 26_35   1       ELEVEE  t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
a824421c-3f82-4e7c-9dd0-57555cd618b8    2026-06-18 16:20:17.692726+00   2026-06-18 16:20:17.692735+00        f       \N      18_25   3       MOYENNE t       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade
6425b212-175c-43f1-b3de-430b48dece26    2026-06-18 16:59:06.915683+00   2026-06-18 16:59:06.915692+00        f       AURELIEN        18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    386e4259-2682-44ba-9073-59eb73919e88b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0cf96a23-f1b1-4df7-8545-22ba584dea47    2026-06-18 17:06:46.026478+00   2026-06-18 17:06:46.02649+00 f       DIAMELA 18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     ec5ccf6e-9f8b-4546-824a-e4c506a30559    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
01cfc1ac-571a-449b-a9a5-7ec1fc62457f    2026-06-18 17:11:45.091591+00   2026-06-18 17:11:45.091602+00        f       JESSE   18_25   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
43b43f3f-d2fd-4f6c-9ab6-c47ada1b2605    2026-06-18 22:33:54.613806+00   2026-06-18 22:33:54.613816+00        f       Elisée  26_35   1       ELEVEE  t       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_entreprise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_entreprise (id, created_at, updated_at, is_deleted, nom_commercial, telephone, adresse, user_id, couleur_primaire, couleur_secondaire, logo_url) FROM stdin;
22898852-840c-4c01-9d7b-89a68ff5cce4    2026-06-11 17:07:24.14273+00    2026-06-11 17:07:24.142734+00        f       33 EXPORT                       eeb0a090-3adb-44d4-9489-a0c1f968c4ab#c51b1b  #0d0c0c data:image/png;base64,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
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-17 22:37:00.624584+00        f       Ceverine                        ee696594-655c-4e8b-ac92-b7b9fc2015f9#190075  #99004a \N
\.


--
-- Data for Name: btl_gaingoodie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_gaingoodie (id, created_at, updated_at, is_deleted, degustation_id, goodie_id, promotion_id, site_id, produit_associe_id, quantite_produit, nom_client, hotesse_id) FROM stdin;
362ecf12-14fd-4a6d-a1c6-28562e1128b5    2026-06-17 22:55:34.431934+00   2026-06-17 22:55:34.431943+00        f       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    \N      0ab94840-ff6c-44da-92b9-14bdef894bfc \N      1       Client  \N
4eac806f-0b38-4807-b7b1-15902ec6eec2    2026-06-17 22:57:55.152776+00   2026-06-17 22:57:55.152812+00        f       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    \N      0ab94840-ff6c-44da-92b9-14bdef894bfc \N      1       Client  \N
ed05725a-b470-48d4-9051-306942d51911    2026-06-17 23:09:42.838104+00   2026-06-17 23:09:42.838111+00        f       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    \N      0ab94840-ff6c-44da-92b9-14bdef894bfc \N      1       Client  \N
52ee86d1-4f85-4bf5-b4ac-4a0b67f08eaf    2026-06-17 23:20:43.025063+00   2026-06-17 23:20:43.025074+00        f       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    \N      0ab94840-ff6c-44da-92b9-14bdef894bfc \N      1       test    \N
b31dea6f-8841-4f99-9ee9-b72b5d12e8e1    2026-06-18 14:58:59.987191+00   2026-06-18 14:58:59.987195+00        f       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    \N      0ab94840-ff6c-44da-92b9-14bdef894bfc \N      1       test    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
1c8564ba-f1f1-4116-91f4-84c267812134    2026-06-18 14:59:13.086269+00   2026-06-18 14:59:13.086274+00        f       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       test    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
ba70106b-095c-49f0-b2e5-9b9a3adbb9f6    2026-06-18 15:03:05.340754+00   2026-06-18 15:03:05.34076+00 f       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       ANGIE   5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
a342c8d9-b59a-44a9-b1b3-ae00510aa007    2026-06-18 15:05:05.742055+00   2026-06-18 15:05:05.742061+00        f       \N      1206e226-e1c8-418e-bc4e-557a470e5328    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       Bissa   5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
78abefce-c13e-4589-a1e8-18d29c591b2c    2026-06-18 15:20:22.420562+00   2026-06-18 15:20:22.420567+00        f       \N      79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       YVAN    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
add2e0ed-f549-4259-b572-ed568668b009    2026-06-18 15:23:01.036557+00   2026-06-18 15:23:01.036563+00        f       \N      9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       SERGINE 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
41800fb9-4aa1-4b8f-b48b-97066ee80242    2026-06-18 15:27:45.103706+00   2026-06-18 15:27:45.103711+00        f       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       PEPITE  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
d8ca8f91-1918-44ef-a96b-efc1a5cc9078    2026-06-18 15:28:21.733266+00   2026-06-18 15:28:21.733272+00        f       \N      4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       AURELIEN        5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
20ffb972-04ed-4f8e-9c36-76c7c27bcc72    2026-06-18 15:43:06.293042+00   2026-06-18 15:43:06.293047+00        f       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      1       SABRINA 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
498a20fc-d353-4e51-a613-6055c803e741    2026-06-18 22:34:08.304741+00   2026-06-18 22:34:08.304746+00        f       \N      a048da9b-fb75-43ae-a6d7-eaa931fec707    \N      b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 \N      1       Elisée  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
\.


--
-- Data for Name: btl_gainpromotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_gainpromotion (id, created_at, updated_at, is_deleted, quantite_produits_concernes, nom_client, tranche_age, campagne_id, hotesse_id, promotion_id, site_id) FROM stdin;
9d62d46d-b25c-4610-b173-e06e27bfa981    2026-06-11 18:48:31.355786+00   2026-06-11 18:48:31.355796+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7f3d2d42-092c-4d74-abca-10c7e6531197    2026-06-11 18:49:02.490683+00   2026-06-11 18:49:02.490694+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d4a6f9a6-d328-4b80-b585-49b2f6269f8c    2026-06-11 19:11:42.988568+00   2026-06-11 19:11:42.988583+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7a657e29-749c-45f9-81f0-26c364ef4409    2026-06-11 19:13:11.362879+00   2026-06-11 19:13:11.362892+00        f       3       Evan’s  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
f013f46e-c594-4c01-916e-466fe54686b6    2026-06-11 19:13:34.663185+00   2026-06-11 19:13:34.663194+00        f       3       Irene   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
40b21d1a-e711-4bae-a341-192403bf027a    2026-06-11 19:14:12.765479+00   2026-06-11 19:14:12.765489+00        f       3       Frédéric        \N      d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
b7c311d8-ba27-4c2f-9e5f-2a683453fa10    2026-06-11 19:16:40.063237+00   2026-06-11 19:16:40.063246+00        f       3       Gislin  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
e0d1a269-165f-4505-aae0-9a31c3a082af    2026-06-11 19:18:43.929838+00   2026-06-11 19:18:43.929851+00        f       6       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
42a7c78a-b682-466f-a639-c7b0f942d646    2026-06-11 19:23:17.893084+00   2026-06-11 19:23:17.893094+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
fa8a7b06-c746-43ff-9dd8-5460cfc8b894    2026-06-11 19:27:20.630329+00   2026-06-11 19:27:20.630338+00        f       3       Franck  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
f985d9ee-e0a8-4858-82b1-e835aa314e78    2026-06-11 19:27:51.76751+00    2026-06-11 19:27:51.76752+00 f       3       Bertrand        \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
0fe927e4-df31-4dfb-9494-b6d988b1727d    2026-06-11 19:28:46.747046+00   2026-06-11 19:28:46.747057+00        f       3       Ruth    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
5e985c28-0c3a-40f9-b8b1-64d8fa006eb8    2026-06-11 19:29:52.917052+00   2026-06-11 19:29:52.917061+00        f       3       Irene   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
cbbdf2e9-19ce-434b-81a8-dc1bb4f687f5    2026-06-11 19:41:58.064252+00   2026-06-11 19:41:58.064272+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d29e8fe8-d013-49f5-8b95-755002ad4ec7    2026-06-11 19:44:14.04968+00    2026-06-11 19:44:14.049693+00        f       3       André   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
0e5742bb-b5e7-4ded-b93c-27011f805af3    2026-06-11 19:44:43.776443+00   2026-06-11 19:44:43.776452+00        f       3       Patrick \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
4ca0b2a8-0a7b-42c7-b3cb-55602d381a64    2026-06-11 19:51:00.614601+00   2026-06-11 19:51:00.614612+00        f       3       Norbert \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
38b998b9-9d24-4965-9730-dca5ad2a6994    2026-06-11 20:05:19.692387+00   2026-06-11 20:05:19.692397+00        f       6       Audray  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
32cb7a15-be6d-4ff9-819c-dbfd0949d2e2    2026-06-11 20:32:48.873878+00   2026-06-11 20:32:48.873888+00        f       3       Udain   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
a283909e-f308-443b-996c-642e2458ee1a    2026-06-11 20:36:10.553136+00   2026-06-11 20:36:10.553147+00        f       3       Kevin   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
908b9999-2720-449f-9ccb-c43247b1850c    2026-06-11 20:37:32.483054+00   2026-06-11 20:37:32.483065+00        f       3       Elodie  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
cd04264b-e121-4059-b67b-faa2085d323e    2026-06-11 20:41:53.512004+00   2026-06-11 20:41:53.512014+00        f       3       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 7204f98c-c025-462b-9868-44570d752d95    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8abdfff8-0274-4817-90ba-752796ec383b    2026-06-11 21:34:30.643819+00   2026-06-11 21:34:30.64383+00 f       3       Gildas  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
465d341e-e18c-490f-a977-52df3796c69a    2026-06-16 17:47:15.566975+00   2026-06-16 17:47:15.566986+00        f       2       Blanchard       \N      d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
6cd6d316-4cff-4ac2-8a4c-a70a03c239a0    2026-06-16 17:47:46.300433+00   2026-06-16 17:47:46.300444+00        f       2       Eric    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
c4e5df3c-f8f3-49f7-963c-fcecfd4da362    2026-06-16 17:53:48.106202+00   2026-06-16 17:53:48.106213+00        f       2       Jean    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8a969b7b-d510-4780-9167-ae8aaff8b106    2026-06-16 18:16:51.582317+00   2026-06-16 18:16:51.582326+00        f       6       Pierre  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
03b819a9-6bf6-4ce9-96b7-7a29eea8f1df    2026-06-16 18:27:52.172384+00   2026-06-16 18:27:52.172394+00        f       3       Gwen    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
1f97f137-f9e1-4e33-8a27-8a962e551eb6    2026-06-16 18:31:17.313044+00   2026-06-16 18:31:17.313056+00        f       6       Ivane   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
79f0766a-b5c6-4e58-a2a1-9d6c652c757a    2026-06-16 18:33:35.135017+00   2026-06-16 18:33:35.135027+00        f       3       Bryan   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
8d0bc445-a3b3-42e8-8065-a9f60d6f1c53    2026-06-16 18:36:16.196553+00   2026-06-16 18:36:16.196562+00        f       2       Patrick \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3fa43a32-c969-4eec-88f3-64cbc1a60817    2026-06-16 18:38:00.410565+00   2026-06-16 18:38:00.410576+00        f       3       Benjamin        \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
b4691aa6-07e8-4c48-a70a-cdcf858a4af5    2026-06-16 18:39:30.4161+00     2026-06-16 18:39:30.416111+00        f       2       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3c2bbcb4-02f9-42b2-9ee7-60945302211b    2026-06-16 18:39:41.0126+00     2026-06-16 18:39:41.012611+00        f       2       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f0ab7dff-9feb-484f-b528-2d8b5b985fd6    2026-06-16 18:43:44.592437+00   2026-06-16 18:43:44.592447+00        f       3       Anicet  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
512110ff-7172-4924-9e29-c90308cfb608    2026-06-16 18:43:57.787553+00   2026-06-16 18:43:57.787563+00        f       3       Ali     \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
ea6333bb-6803-44b0-8153-35c73c8abe08    2026-06-16 18:46:10.29147+00    2026-06-16 18:46:10.291481+00        f       6       Johny   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
793d9dff-ce3c-49ea-95ae-0bae2c4e6332    2026-06-16 18:46:14.890838+00   2026-06-16 18:46:14.890849+00        f       2       Ange    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
ca15c200-3cc3-4427-9e7f-e6b3921b7c31    2026-06-16 18:47:20.013105+00   2026-06-16 18:47:20.013116+00        f       3       Murphy  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
19977fff-21d5-4c06-be1c-17271b83d76f    2026-06-16 18:51:32.457045+00   2026-06-16 18:51:32.457058+00        f       6       Leslie  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
14261a70-339f-470c-99c9-1a8b7a02661d    2026-06-16 18:53:27.837326+00   2026-06-16 18:53:27.837336+00        f       3       Henry   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
f9b85a1f-6ebc-4047-b5cd-92ad9c1fe3ed    2026-06-16 18:54:54.474149+00   2026-06-16 18:54:54.474158+00        f       3       Rodric  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
211465f3-05ca-434a-992f-e4f1f5e830e7    2026-06-16 18:55:26.29876+00    2026-06-16 18:55:26.29877+00 f       2       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
074396c1-5835-4a85-ae81-f5d68c1737d1    2026-06-16 19:01:30.441645+00   2026-06-16 19:01:30.441655+00        f       6       Fredy   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5daeaf9a-aa9a-45e3-b435-e6e2b3b97601    2026-06-16 19:04:55.85805+00    2026-06-16 19:04:55.858061+00        f       6       Fredy   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
103d5302-11a3-4757-8f0b-9c3c4447aa28    2026-06-16 19:13:27.469961+00   2026-06-16 19:13:27.469972+00        f       2       Amour   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
68147ca7-2a5f-4704-aba6-4f095cbf8e1d    2026-06-16 19:22:54.729447+00   2026-06-16 19:22:54.729458+00        f       6       Smaelle \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
8ada60ff-5753-4af7-8680-398e6160929b    2026-06-16 19:27:50.740188+00   2026-06-16 19:27:50.740201+00        f       3       Christ  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
21b69eee-df4d-45ea-bc0a-13d939be6827    2026-06-16 19:31:21.573493+00   2026-06-16 19:31:21.573504+00        f       2       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
2dcc3418-7ccd-42b6-9b93-e1e01434b3d4    2026-06-16 19:33:44.991381+00   2026-06-16 19:33:44.991391+00        f       6       Maria   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
57863835-8607-4f0a-ba30-9f3ac3938eaf    2026-06-16 19:36:03.008095+00   2026-06-16 19:36:03.008104+00        f       2       Scott   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f4995586-735d-48fa-b61d-d605d305eafb    2026-06-16 19:37:19.63068+00    2026-06-16 19:37:19.630692+00        f       3       Edgard  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
e514cc1d-398f-4aef-bf09-3f13f9196358    2026-06-16 20:00:17.702993+00   2026-06-16 20:00:17.703004+00        f       3       Christ  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
c1e97023-f619-43e4-9485-737845c602b2    2026-06-16 20:01:14.113012+00   2026-06-16 20:01:14.113021+00        f       6       Smaelle \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
8f9f1260-4a5b-4c21-b470-606a905c6fbb    2026-06-16 20:04:39.88205+00    2026-06-16 20:04:39.88206+00 f       3       Willy   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
d77ba4df-66d3-4c64-8e0e-a36909a1e439    2026-06-16 20:12:09.633742+00   2026-06-16 20:12:09.633753+00        f       3       Mz      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0642f567-bfd0-4c8c-b2fe-1bf623a643fb    2026-06-16 20:12:28.940225+00   2026-06-16 20:12:28.940235+00        f       2       \N      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
dd3c3fe5-206c-44cc-b379-6fb73eaa1077    2026-06-16 20:12:30.878209+00   2026-06-16 20:12:30.878221+00        f       3       Marie   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
ccaea9d2-d125-490d-bfa9-7ffb21e2799e    2026-06-16 20:19:03.803263+00   2026-06-16 20:19:03.803271+00        f       2       Alexandre       \N      d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
9064d9c7-684b-44c9-9ea8-eeed7a236665    2026-06-16 20:24:55.531194+00   2026-06-16 20:24:55.531206+00        f       6       Dg      \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5480ce9b-5b25-46d3-a729-04e09996c208    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f06eb5a5-0bf8-4a09-88fd-606180468e79    2026-06-16 20:25:09.348792+00   2026-06-16 20:25:09.348803+00        f       3       Randy   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7204f98c-c025-462b-9868-44570d752d95    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c2bd2756-a76f-48a8-96c2-55d979083ce4    2026-06-16 20:28:42.800091+00   2026-06-16 20:28:42.800102+00        f       6       Lucapi  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
f44af39a-015d-44b9-9eb5-84d50ca4008f    2026-06-16 20:28:46.48874+00    2026-06-16 20:28:46.48875+00 f       6       Junior  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
a91c9295-7ad0-46fb-b649-492bb5893dcd    2026-06-16 20:31:49.400288+00   2026-06-16 20:31:49.400299+00        f       6       Lucapy  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
51075d1b-78e7-46ee-9a29-9f6ff2ea1c44    2026-06-16 21:22:43.207493+00   2026-06-16 21:22:43.207504+00        f       2       Luc     \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
48d85bce-97d1-4859-a268-e2e40d5debcd    2026-06-16 22:07:41.796123+00   2026-06-16 22:07:41.796137+00        f       3       Kévin   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
37239ea2-1ad9-4b0e-b06d-85165d54f5e7    2026-06-16 22:08:13.154479+00   2026-06-16 22:08:13.15449+00 f       3       Océane  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
1c53560b-f0a9-446d-b1f2-b698b4775e84    2026-06-16 22:09:22.443165+00   2026-06-16 22:09:22.443176+00        f       3       Bienvenue       \N      d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
2a37e61e-1638-48c7-9c4a-c4235a7c011e    2026-06-17 16:26:20.454119+00   2026-06-17 16:26:20.454129+00        f       3       Bryan   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
296aae5f-0f28-49c8-8bc6-39486e661860    2026-06-17 16:52:32.019441+00   2026-06-17 16:52:32.019451+00        f       3       Jean    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
85424972-bb41-436a-acf3-c816857b9ae3    2026-06-17 16:55:27.697337+00   2026-06-17 16:55:27.697346+00        f       3       Jack    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
8bee9696-964c-45d2-9e81-5f0646bf3dd6    2026-06-17 16:58:25.681236+00   2026-06-17 16:58:25.681246+00        f       3       Jacques \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
df46f924-36fb-4200-b498-28d34b230a44    2026-06-17 17:12:50.188622+00   2026-06-17 17:12:50.188635+00        f       3       David   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
f20edfb7-7980-41b7-ac8c-5e341cab0f35    2026-06-17 18:21:20.015837+00   2026-06-17 18:21:20.015847+00        f       6       Test    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
22d0473e-c420-41c9-9cc4-b3113ac0849b    2026-06-17 18:28:07.943584+00   2026-06-17 18:28:07.943595+00        f       2       Henry   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7443467f-21fe-4219-a76d-d51089c17245    2026-06-17 18:43:48.814464+00   2026-06-17 18:43:48.814475+00        f       3       Rikiel  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
03e05773-e89f-4c6c-b2ea-7e0bd2b56b39    2026-06-17 18:46:01.267442+00   2026-06-17 18:46:01.267453+00        f       6       FLEUR   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
e56f5b1f-0b1e-45eb-b7dc-055e54fcbdd7    2026-06-17 18:48:48.799223+00   2026-06-17 18:48:48.799233+00        f       2       Bertrand        \N      d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8a00bb13-d40d-498c-afbd-67aee188f004    2026-06-17 18:56:45.657701+00   2026-06-17 18:56:45.657711+00        f       2       601     \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f4e3fd00-b07a-4b95-b64e-eecf83d2a06a    2026-06-17 19:08:22.560311+00   2026-06-17 19:08:22.560322+00        f       2       Rame    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7c0fdf02-9f92-40e5-a2a8-0c26683d57c1    2026-06-17 19:44:24.397027+00   2026-06-17 19:44:24.397038+00        f       6       Smaëlle \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
83a7bd60-7d30-43e5-ae03-fefeaa70c55f    2026-06-17 19:50:41.306237+00   2026-06-17 19:50:41.306247+00        f       6       EKOMI EKOMI     \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
d6d1d5b4-0f9c-48ed-aa6e-116f5ea366a2    2026-06-17 19:51:44.556716+00   2026-06-17 19:51:44.556726+00        f       3       Nino    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
95203c2e-83e7-4c0f-a3ed-2fafeff0ea7d    2026-06-17 19:53:10.887519+00   2026-06-17 19:53:10.887529+00        f       6       Smaëlle \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
cfbce1ac-f1d9-4deb-8d65-c77fd8a732a8    2026-06-17 19:55:05.854269+00   2026-06-17 19:55:05.854279+00        f       6       EKOMI EKOMI     \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
e6bbb938-8669-42f4-adca-ce576b7f4d30    2026-06-17 19:56:32.47513+00    2026-06-17 19:56:32.475138+00        f       3       Cavid   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
28b6f5ca-e24f-4046-b478-b7a559a38627    2026-06-17 20:08:46.161041+00   2026-06-17 20:08:46.161051+00        f       6       EKOMI EKOMI     \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
66c0008b-efd7-4ffa-8e13-393369a4675a    2026-06-17 20:13:50.349165+00   2026-06-17 20:13:50.349173+00        f       6       Vincent \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
6e899e15-55b7-4804-ab8c-8c606b70543d    2026-06-17 20:20:10.561054+00   2026-06-17 20:20:10.561064+00        f       2       Hugor   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
4f3dd8be-172d-41b2-86b3-9b4485062754    2026-06-17 20:40:51.246627+00   2026-06-17 20:40:51.246637+00        f       3       Aricle  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
e8ddaebd-4c98-480c-9b66-bdb24c951bba    2026-06-17 20:45:14.847955+00   2026-06-17 20:45:14.847966+00        f       6       EKOMI EKOMI     \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
a5edb134-b7da-4b16-a864-ba0a45aee958    2026-06-17 20:49:26.490579+00   2026-06-17 20:49:26.49059+00 f       6       Ekomi   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
fa5bf9b8-67b4-49c1-ad5e-661654bb097d    2026-06-17 20:52:49.654396+00   2026-06-17 20:52:49.654405+00        f       6       Smaeelle        \N      d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
d1deb70f-cd1f-491c-9a2c-b91677c46b2d    2026-06-17 21:04:44.616572+00   2026-06-17 21:04:44.616583+00        f       3       Tresor  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
84186b67-be47-4c1e-89ea-c9338b9f9204    2026-06-17 21:05:19.079477+00   2026-06-17 21:05:19.079487+00        f       3       Elysee  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
3d2926c7-9224-43f9-8093-7ba11c9cf7d6    2026-06-17 21:07:22.480116+00   2026-06-17 21:07:22.480127+00        f       6       Smaelle \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
3cbb6390-be63-4838-badc-982052259306    2026-06-17 21:07:43.338323+00   2026-06-17 21:07:43.338334+00        f       2       Jull    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
45937a68-a75f-4e8b-8e8b-82197b513a2c    2026-06-17 21:10:52.62401+00    2026-06-17 21:10:52.624021+00        f       6       Owee    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
6f480e2c-305b-46b1-9ed0-2037ea2fd901    2026-06-17 21:12:13.655071+00   2026-06-17 21:12:13.655081+00        f       6       Osee    \N      d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
19217276-5c84-4ad1-84a2-aaa8609ff5a4    2026-06-17 21:14:41.653863+00   2026-06-17 21:14:41.653874+00        f       6       Melvy’ne        \N      d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
5cd477cb-924c-45f6-8492-8ceda5ffa28c    2026-06-17 22:19:09.934825+00   2026-06-17 22:19:09.934834+00        f       6       \N      18_25   d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5480ce9b-5b25-46d3-a729-04e09996c208    31ab0910-ff6c-4f50-abd1-6054890c27b2
7f320b00-7e73-4930-a8e7-77fb8d9536ea    2026-06-18 08:29:30.374519+00   2026-06-18 08:29:30.374527+00        f       5       \N      \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
2a5a47bf-da5a-4067-9a91-a4b39fd58321    2026-06-18 09:29:01.179689+00   2026-06-18 09:29:01.1797+00  f       3       Edmond  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7204f98c-c025-462b-9868-44570d752d95    31ab0910-ff6c-4f50-abd1-6054890c27b2
ecaf842b-6df2-451f-bdd2-659e4770382d    2026-06-18 11:13:25.003983+00   2026-06-18 11:13:25.003995+00        f       5       SERGE   \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
73a11459-149e-4728-8104-4084adff6916    2026-06-18 11:25:31.255884+00   2026-06-18 11:25:31.255898+00        f       3       ef      \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 74852258-0da9-48c7-aa02-9e03c703a2ee    98e0c8c7-248c-480d-a84b-04a8e4b8aade
9d7a1fe6-b820-48b6-b0d7-ab21dff1c4a8    2026-06-18 11:26:08.818301+00   2026-06-18 11:26:08.818311+00        f       3       \N      26_35   aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 74852258-0da9-48c7-aa02-9e03c703a2ee    98e0c8c7-248c-480d-a84b-04a8e4b8aade
88fe64c3-11d5-4520-b6ad-7ee3e0043b01    2026-06-18 11:30:07.608917+00   2026-06-18 11:30:07.608926+00        f       5       ZAZIE   \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
0e38cf06-f895-4a34-90ff-1d5e82746186    2026-06-18 11:31:06.828511+00   2026-06-18 11:31:06.828522+00        f       5       ELODIE  \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
0db1ce52-f206-4735-a74d-acfd0ed19fad    2026-06-18 11:31:59.216278+00   2026-06-18 11:31:59.216288+00        f       3       EVODIE  \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 74852258-0da9-48c7-aa02-9e03c703a2ee    98e0c8c7-248c-480d-a84b-04a8e4b8aade
364ea102-00bd-479f-af3a-923416bc095a    2026-06-18 11:32:29.247006+00   2026-06-18 11:32:29.247016+00        f       5       ERREUR  \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
a6e09006-f79e-4579-83a9-27a111c326a9    2026-06-18 13:22:58.094801+00   2026-06-18 13:22:58.094811+00        f       5       ANGIE   \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
0a680609-a52e-47a9-91f4-f6fd38ba4256    2026-06-18 14:55:36.04175+00    2026-06-18 14:55:36.041763+00        f       5       ANGIE   \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
708ab086-733c-489a-902c-b82a8d6537ed    2026-06-18 15:04:53.680553+00   2026-06-18 15:04:53.680564+00        f       5       Bissa   \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
5cf17f2c-f800-42ed-9c3d-bdfa08b9addd    2026-06-18 15:07:17.332314+00   2026-06-18 15:07:17.332323+00        f       5       YVAN    \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
9627eba0-64e9-4a85-af9b-618637df4bd2    2026-06-18 15:22:51.956253+00   2026-06-18 15:22:51.956263+00        f       5       SERGINE \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
71e2e716-c2fb-473d-a07d-7a2242139687    2026-06-18 15:27:30.140643+00   2026-06-18 15:27:30.140653+00        f       5       PEPITE  \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
64f15a53-58fc-46c6-af08-0467359d87f7    2026-06-18 15:28:13.549833+00   2026-06-18 15:28:13.549841+00        f       5       AURELIEN        \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
056a8c03-07ed-4c65-a4ba-fe9e00d9e8d9    2026-06-18 15:42:54.829544+00   2026-06-18 15:42:54.829555+00        f       5       SABRINA \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
9aa55d97-f2de-4d9c-a5c0-bc67db416da2    2026-06-18 16:20:18.286481+00   2026-06-18 16:20:18.286491+00        f       5       \N      18_25   aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3c363b65-b203-4b67-9601-fe19caad9c52    98e0c8c7-248c-480d-a84b-04a8e4b8aade
bf04302d-233c-4b70-b776-64d315f685be    2026-06-18 17:11:45.483427+00   2026-06-18 17:11:45.483437+00        f       2       JESSE   \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3331d94a-6f23-4d51-b207-f1325a68c82f    2026-06-18 22:33:55.285764+00   2026-06-18 22:33:55.285773+00        f       6       Elisée  \N      d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5480ce9b-5b25-46d3-a729-04e09996c208    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_goodie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_goodie (id, created_at, updated_at, is_deleted, nom, description, entreprise_id, campagne_id, produit_associe_id, quantite_produit_associe) FROM stdin;
589fd6ed-d9ae-4074-a6d6-980089926534    2026-06-11 17:27:33.153997+00   2026-06-11 17:27:33.154007+00        f       Maillots de sport       \N      22898852-840c-4c01-9d7b-89a68ff5cce4d36107b8-f8fd-4250-a37b-2920a2e92199     \N      1
274c3e55-aef1-41ab-b641-a24560eae583    2026-06-17 15:53:48.979886+00   2026-06-17 15:53:48.979897+00        f       Sac de Sport    \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
a048da9b-fb75-43ae-a6d7-eaa931fec707    2026-06-11 17:26:22.951229+00   2026-06-17 18:07:19.532751+00        f       Clé USB \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
acb45014-62c2-48be-80c8-234d3a416d35    2026-06-17 18:07:44.817805+00   2026-06-17 18:07:44.817815+00        f       Echarpes        \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    2026-06-11 17:26:04.177914+00   2026-06-17 18:08:05.780925+00        f       Casquettes      \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    2026-06-17 18:08:25.051402+00   2026-06-17 18:08:25.051413+00        f       Carnet  \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    2026-06-17 18:08:55.710832+00   2026-06-17 18:08:55.710843+00        f       Ballon  \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
0e24738c-8b11-4067-9dad-26da764874e5    2026-06-11 17:27:08.749541+00   2026-06-17 18:09:18.315808+00        f       Décapsuleur     \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    2026-06-11 17:27:58.794633+00   2026-06-17 18:09:43.363462+00        f       CAWET   \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
fa34a957-0c59-4526-a3af-db5d436a3e87    2026-06-17 18:10:16.471068+00   2026-06-17 18:10:16.47108+00 f       Casque audio    \N      22898852-840c-4c01-9d7b-89a68ff5cce4    d36107b8-f8fd-4250-a37b-2920a2e92199 \N      1
660508ff-d3ad-4c1c-a9ce-0cd565d2fbed    2026-06-17 22:30:45.022391+00   2026-06-17 22:30:45.022402+00        f       TEST    \N      d871013c-b3b7-451c-af35-800d1ab9538c    1529df21-8811-4562-b88c-ac3652cf9010 \N      1
f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    2026-06-17 22:38:41.523108+00   2026-06-17 22:38:41.523119+00        f       test ceverine   \N      d871013c-b3b7-451c-af35-800d1ab9538c    885cf097-4539-44fb-9231-c023f5b0eb9d \N      1
9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    2026-06-18 08:27:25.50869+00    2026-06-18 08:27:25.508703+00        f       T-shirt \N      d871013c-b3b7-451c-af35-800d1ab9538c    aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 \N      1
4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    2026-06-18 08:27:38.888513+00   2026-06-18 08:27:38.888523+00        f       Casquettes      \N      d871013c-b3b7-451c-af35-800d1ab9538c    aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 \N      1
1206e226-e1c8-418e-bc4e-557a470e5328    2026-06-18 08:27:59.375145+00   2026-06-18 08:27:59.375156+00        f       TOMATES \N      d871013c-b3b7-451c-af35-800d1ab9538c    aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 \N      1
79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    2026-06-18 08:28:24.634214+00   2026-06-18 08:28:24.634223+00        f       Orange  \N      d871013c-b3b7-451c-af35-800d1ab9538c    aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 \N      1
d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    2026-06-18 08:28:42.761114+00   2026-06-18 08:28:42.761125+00        f       Fer à Repasser  \N      d871013c-b3b7-451c-af35-800d1ab9538c    aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 \N      1
\.


--
-- Data for Name: btl_historicalcampagne; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalcampagne (id, created_at, updated_at, is_deleted, nom, date_debut, date_fin, description, history_id, history_date, history_change_reason, history_type, entreprise_id, history_user_id, objectif_degustations, objectif_ventes, type_campagne, type_recompense) FROM stdin;
d36107b8-f8fd-4250-a37b-2920a2e92199    2026-06-11 17:19:42.769437+00   2026-06-11 17:19:42.769446+00        f       33 EXPORT CHR   2026-06-11      2026-07-19      \N      d75caed8-1efc-471b-813d-d5a13aa33a5f 2026-06-11 17:19:42.771806+00   \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    \N      5760    VENTE   PROMOTIONS
1529df21-8811-4562-b88c-ac3652cf9010    2026-06-17 19:39:21.648564+00   2026-06-17 19:39:21.648571+00        f       CAMPAGNE TEST   2026-06-17      2026-07-04      \N      a3669bd9-6f50-47dc-9e87-c808632d50cb 2026-06-17 19:39:21.659295+00   \N      +       d871013c-b3b7-451c-af35-800d1ab9538c 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    \N      \N      VENTE   PROMOTIONS
885cf097-4539-44fb-9231-c023f5b0eb9d    2026-06-17 22:32:07.571972+00   2026-06-17 22:32:07.571982+00        f       TEST    2026-06-25      2026-06-30      \N      c58ec101-4741-41bc-be44-112de8f5f017 2026-06-17 22:32:07.575578+00   \N      +       d871013c-b3b7-451c-af35-800d1ab9538c 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    400     3000    DEGUSTATION_VENTE       GOODIES
1529df21-8811-4562-b88c-ac3652cf9010    2026-06-17 19:39:21.648564+00   2026-06-18 06:58:32.299019+00        t       CAMPAGNE TEST   2026-06-17      2026-07-04      \N      7107d8f9-9559-4b79-8c38-cd8ee586efc9 2026-06-18 06:58:32.3035+00     \N      ~       d871013c-b3b7-451c-af35-800d1ab9538c 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    \N      \N      VENTE   PROMOTIONS
aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    2026-06-18 08:26:22.319293+00   2026-06-18 08:26:22.319306+00        f       TEST 2  2026-06-18      2026-06-28      \N      b4e3598e-9272-48a4-95e7-f01add6be3c2 2026-06-18 08:26:22.32402+00    \N      +       d871013c-b3b7-451c-af35-800d1ab9538c 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    \N      \N      VENTE   PROMOTIONS
\.


--
-- Data for Name: btl_historicaldegustation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicaldegustation (id, created_at, updated_at, is_deleted, nom_client, tranche_age, note_gout, intention_achat, a_achete, history_id, history_date, history_change_reason, history_type, campagne_id, history_user_id, hotesse_id, produit_id, site_id) FROM stdin;
bcd48ac1-c427-4cb5-9796-bc3fe8398c3d    2026-06-11 18:48:30.590055+00   2026-06-11 18:48:30.590064+00        f       \N      36_50   1       ELEVEE  t       469819a6-7d84-4d3b-a8f9-181ff909aab8 2026-06-11 18:48:30.591781+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
adf11c8b-51fb-4950-bcef-9b85e5560249    2026-06-11 18:49:02.116433+00   2026-06-11 18:49:02.116444+00        f       \N      36_50   1       ELEVEE  t       197e2b3c-99fc-407f-863f-0274d1506a70 2026-06-11 18:49:02.118941+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
10e6604e-6bd9-425b-9c3f-6c82593e6e74    2026-06-11 19:11:42.572539+00   2026-06-11 19:11:42.57255+00 f       \N      36_50   1       ELEVEE  t       f4c3e844-ab7b-4300-9009-63be2ecfcc9c2026-06-11 19:11:42.576851+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
86488539-e4e3-44e3-9a33-fc8c5bb2a3d5    2026-06-11 19:13:10.626222+00   2026-06-11 19:13:10.626233+00        f       Evan’s  36_50   1       ELEVEE  t       3b05a437-1177-48cb-9ae9-9078775cf3b1 2026-06-11 19:13:10.630113+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
a0edd18c-a9a5-4700-ad52-a5d40466d8ae    2026-06-11 19:13:34.28169+00    2026-06-11 19:13:34.281701+00        f       Irene   26_35   1       ELEVEE  t       e8639856-0aae-447b-bac2-42aa97d3cd7b 2026-06-11 19:13:34.28602+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
0ffc75a1-1c63-4111-aac5-b92af133a3ef    2026-06-11 19:14:12.336392+00   2026-06-11 19:14:12.336401+00        f       Frédéric        26_35   1       ELEVEE  t       bfffc8cc-4843-41fa-a9e5-c902eddd5a5f 2026-06-11 19:14:12.341035+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
f364046a-59d6-41aa-b24e-a6c1d52041d6    2026-06-11 19:16:39.676225+00   2026-06-11 19:16:39.676236+00        f       Gislin  36_50   1       ELEVEE  t       9434aa29-3466-487e-93b4-a83981410f32 2026-06-11 19:16:39.679762+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
50e8ed03-9bc8-4ce2-924b-e8fc75abc576    2026-06-11 19:18:43.15595+00    2026-06-11 19:18:43.15596+00 f       \N      36_50   1       ELEVEE  t       b891e6ee-ae65-46db-9dad-cc8dcd954cd82026-06-11 19:18:43.159655+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0adf6f29-8419-4992-aed9-1cc5580045ea    2026-06-11 19:23:17.126926+00   2026-06-11 19:23:17.126937+00        f       \N      18_25   1       ELEVEE  t       16e3ab05-4645-4abb-bb1f-8200320de89c 2026-06-11 19:23:17.135338+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a0641f60-1375-4381-9ba7-807e13ef7438    2026-06-11 19:27:19.785055+00   2026-06-11 19:27:19.785063+00        f       Franck  26_35   1       ELEVEE  t       0352f355-eae7-4b17-b10d-80df596e68f8 2026-06-11 19:27:19.789827+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
68516fe0-e3aa-474c-b8cc-46b8890de0b5    2026-06-11 19:27:51.032073+00   2026-06-11 19:27:51.032082+00        f       Bertrand        36_50   1       ELEVEE  t       93826c68-ebf6-419b-9a8c-54287caecf31 2026-06-11 19:27:51.038261+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
8a746555-06eb-43cf-a25b-5e1420d4221d    2026-06-11 19:28:46.38028+00    2026-06-11 19:28:46.380289+00        f       Ruth    26_35   1       ELEVEE  t       0e541669-cdd4-4e11-ae33-903f5236a619 2026-06-11 19:28:46.385906+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
3c577667-a4a7-4a5d-9bb0-8295042c0f7d    2026-06-11 19:29:52.559663+00   2026-06-11 19:29:52.559673+00        f       Irene   26_35   1       ELEVEE  t       f37bdd53-9791-4288-936b-2f61a3bd632c 2026-06-11 19:29:52.563347+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
6d8ce665-2cff-439c-907e-fdd97853c1fc    2026-06-11 19:41:57.135818+00   2026-06-11 19:41:57.135827+00        f       \N      36_50   1       ELEVEE  t       aab5e511-72af-4839-8de9-208cac47c8e7 2026-06-11 19:41:57.139844+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0510614b-45a7-443f-b316-1e1838759fe4    2026-06-11 19:44:13.339962+00   2026-06-11 19:44:13.339972+00        f       André   36_50   1       ELEVEE  t       d8fd3b00-f71d-48fb-81a1-e8547cd5ca19 2026-06-11 19:44:13.343925+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
854e3b99-d43c-4a78-a88b-1a1ebf92348c    2026-06-11 19:44:43.390132+00   2026-06-11 19:44:43.390142+00        f       Patrick 26_35   1       ELEVEE  t       e559f5c8-bf98-4d52-8b01-ceedbf8c7726 2026-06-11 19:44:43.393832+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
ee60143e-80ae-4429-a7c1-db5c95a986d2    2026-06-11 19:51:00.129408+00   2026-06-11 19:51:00.129419+00        f       Norbert 26_35   1       ELEVEE  t       db731fe7-7ec5-4ea4-84d0-6cb82711eb58 2026-06-11 19:51:00.133766+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
bb2ef280-99a2-4944-9490-a1c1b8bfa93b    2026-06-11 20:05:18.875304+00   2026-06-11 20:05:18.875324+00        f       Audray  36_50   1       ELEVEE  t       cf6c1231-f89a-4ea1-a338-4a98c0f76d24 2026-06-11 20:05:18.879948+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
f244a756-3736-4980-bdf1-efa9308003e7    2026-06-11 20:32:48.227478+00   2026-06-11 20:32:48.227488+00        f       Udain   36_50   1       ELEVEE  t       d72b37c2-3496-4a70-a1e9-831c5e62a379 2026-06-11 20:32:48.23156+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
5a4eeb0f-e82d-41a7-a2fe-0f80f5221e7a    2026-06-11 20:36:10.226888+00   2026-06-11 20:36:10.2269+00  f       Kevin   36_50   1       ELEVEE  t       4b97ad08-f0e8-4e2d-b1ed-53b130ad7c502026-06-11 20:36:10.231453+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
d52aa490-e4cf-4bff-b926-24b80df0c432    2026-06-11 20:37:32.032204+00   2026-06-11 20:37:32.032212+00        f       Elodie  36_50   1       ELEVEE  t       375db6c5-a086-4628-909a-54a81aa83112 2026-06-11 20:37:32.036262+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
35cbbe1b-6d2c-46fd-9fde-d70d3627e5e2    2026-06-11 20:41:52.742521+00   2026-06-11 20:41:52.742531+00        f       \N      26_35   1       ELEVEE  t       24bd7ef9-e1b3-48c6-a215-cbdcf34cbddb 2026-06-11 20:41:52.745833+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a0e940b0-1469-4523-92ad-dfe39497d43f    2026-06-11 21:34:30.314501+00   2026-06-11 21:34:30.314511+00        f       Gildas  36_50   1       ELEVEE  t       ca793d19-5db5-4275-a47c-71d55ab632b3 2026-06-11 21:34:30.318217+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
b1a7912b-d3c8-49ec-b3b5-ed3fb2dc18db    2026-06-16 17:47:14.711599+00   2026-06-16 17:47:14.711609+00        f       Blanchard       36_50   1       ELEVEE  t       d956b308-1305-459a-b18e-3397549771ee 2026-06-16 17:47:14.715865+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
1b881284-7237-4fbe-b731-e90867505c2d    2026-06-16 17:47:45.950293+00   2026-06-16 17:47:45.950302+00        f       Eric    36_50   1       ELEVEE  t       2f1e7a6c-bc5b-42c9-953e-3ebd35c3a0a2 2026-06-16 17:47:45.954866+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5e3b940f-01ed-476b-a277-f4a609c42bf8    2026-06-16 17:53:47.307696+00   2026-06-16 17:53:47.307707+00        f       Jean    36_50   1       ELEVEE  t       d90aea85-2ec3-4c2c-80cd-b7cc6a96e5ff 2026-06-16 17:53:47.312463+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
b5a6a4ea-34e0-43eb-b1b0-7ea070ceab31    2026-06-16 18:16:50.907332+00   2026-06-16 18:16:50.907342+00        f       Pierre  36_50   1       ELEVEE  t       549d4bc0-5201-4115-b5ad-ed8dcb66a67e 2026-06-16 18:16:50.911572+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
50efb98c-af25-4a12-a162-2d25d7f24cb9    2026-06-16 18:27:50.391469+00   2026-06-16 18:27:50.391478+00        f       Gwen    18_25   1       ELEVEE  t       cf3a2249-ece3-4625-bd5b-a7e0805e2d6d 2026-06-16 18:27:50.396502+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
469bb4b4-9ec6-4a14-90de-3e1e4bbc2156    2026-06-16 18:31:16.64432+00    2026-06-16 18:31:16.644329+00        f       Ivane   26_35   1       ELEVEE  t       56dde437-0667-4df0-9244-06a1f5b9b62f 2026-06-16 18:31:16.648799+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
166d6603-7303-43a0-a9fe-d7ae6bbc8e04    2026-06-16 18:33:34.618213+00   2026-06-16 18:33:34.618224+00        f       Bryan   26_35   1       ELEVEE  t       095d81f0-3384-4121-9fa9-99ba593b5759 2026-06-16 18:33:34.622828+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
9357ddd4-f568-42b9-a273-121fa8076e9b    2026-06-16 18:36:15.738309+00   2026-06-16 18:36:15.738318+00        f       Patrick 36_50   1       ELEVEE  t       0dc85e72-5f55-4ef5-8e51-ed0743948c69 2026-06-16 18:36:15.74332+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
ccdefab1-a2b0-4f79-ab99-244c42adeb16    2026-06-16 18:37:59.952276+00   2026-06-16 18:37:59.952285+00        f       Benjamin        18_25   1       ELEVEE  t       42660a42-b08f-46b6-8ac4-d889203c4c6b 2026-06-16 18:37:59.95678+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
d3f3becf-0bad-4910-9c1c-6fb5b7125fb9    2026-06-16 18:39:28.698225+00   2026-06-16 18:39:28.698236+00        f       \N      36_50   1       ELEVEE  t       dbab73ad-279b-4f0d-8e6e-95821577288e 2026-06-16 18:39:28.702646+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
751446e2-2ae6-455f-bed4-f828e1ed45fe    2026-06-16 18:39:40.602552+00   2026-06-16 18:39:40.602562+00        f       \N      36_50   1       ELEVEE  t       a61223dc-2079-4cd3-9692-1c42e7f61c97 2026-06-16 18:39:40.60648+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7f12569e-cba9-4b2b-8e7f-9b8c928ff024    2026-06-16 18:43:43.960301+00   2026-06-16 18:43:43.96031+00 f       Anicet  36_50   1       ELEVEE  t       b40c78dd-63ac-4a01-8a39-3d5cf5084d702026-06-16 18:43:43.966871+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a180add1-dad4-4faa-9ec1-b03f2b922769    2026-06-16 18:43:56.866029+00   2026-06-16 18:43:56.86604+00 f       Ali     26_35   1       ELEVEE  t       321b712f-a972-4200-a5bf-acfbcb83ba372026-06-16 18:43:56.87024+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
3d0a5029-3cbd-4b26-8106-f9634de09c03    2026-06-16 18:46:09.51334+00    2026-06-16 18:46:09.51335+00 f       Johny   26_35   1       ELEVEE  t       cedc55a5-367a-4595-b625-e37bf4acedc82026-06-16 18:46:09.518014+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
6afa83a9-bf73-4c32-9382-5194a50a821d    2026-06-16 18:46:14.534199+00   2026-06-16 18:46:14.534209+00        f       Ange    26_35   1       ELEVEE  t       13a53e8f-8fcd-4fff-8cf0-796c5521584e 2026-06-16 18:46:14.538083+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
81651d03-c292-4ffa-9aa0-ce61848dde04    2026-06-16 18:47:19.477053+00   2026-06-16 18:47:19.477072+00        f       Murphy  36_50   1       ELEVEE  t       c510603a-6858-41e0-ba4a-714f24fcfab3 2026-06-16 18:47:19.480814+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
e03f5be5-d0db-4699-ae83-b6b22e188d0d    2026-06-16 18:51:30.294431+00   2026-06-16 18:51:30.294455+00        f       Leslie  26_35   1       ELEVEE  t       be43d002-00fb-4d04-b083-1e6e39e94766 2026-06-16 18:51:30.298958+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
63f3efdd-a2cf-415d-a9c2-b549e5a0c596    2026-06-16 18:53:26.922229+00   2026-06-16 18:53:26.92224+00 f       Henry   18_25   1       ELEVEE  t       051876db-5a2c-4330-b75a-7b79b43769152026-06-16 18:53:26.92697+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
55c4b479-9906-4721-9465-ad840f818ae7    2026-06-16 18:54:53.809368+00   2026-06-16 18:54:53.809377+00        f       Rodric  36_50   1       ELEVEE  t       9897ddc8-2e16-47c1-9d9a-72b17ee19d99 2026-06-16 18:54:53.813968+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
2b6cc201-e9b4-4829-a925-5e10598c4a39    2026-06-16 18:55:25.938464+00   2026-06-16 18:55:25.938472+00        f       \N      26_35   1       ELEVEE  t       f23490fb-554c-4b35-9da6-f23c11e92b10 2026-06-16 18:55:25.942833+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995aa0dfbb-0c17-4463-bc2b-80c560251dd4     5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a1d12ad5-9066-4eed-8561-ec93cc474888    2026-06-16 19:01:30.100747+00   2026-06-16 19:01:30.100757+00        f       Fredy   36_50   1       ELEVEE  t       6bafb0a8-b495-4d91-a3f5-12176535b286 2026-06-16 19:01:30.104911+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0cf6df49-2579-460d-9738-194385ebdd67    2026-06-16 19:04:55.480063+00   2026-06-16 19:04:55.480073+00        f       Fredy   26_35   1       ELEVEE  t       c27fa559-bc71-436d-a08e-a948887baa0e 2026-06-16 19:04:55.485302+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
dd16a147-9d37-43d4-ac9a-fa35ae606cb2    2026-06-16 19:13:26.515908+00   2026-06-16 19:13:26.515918+00        f       Amour   36_50   1       ELEVEE  t       1398985b-fc1e-4ffe-a0bd-a597c88f0217 2026-06-16 19:13:26.519722+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
864b59a5-acc2-43ed-9b75-d674acae11fa    2026-06-16 19:22:53.882925+00   2026-06-16 19:22:53.882933+00        f       Smaelle 26_35   1       ELEVEE  t       2641d1b8-1e02-466b-9c45-1293c3b44a9f 2026-06-16 19:22:53.887773+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
30d625b0-0460-4f87-8c0f-8a36dd1e3813    2026-06-16 19:27:49.962301+00   2026-06-16 19:27:49.96231+00 f       Christ  26_35   1       ELEVEE  t       45400514-6a49-4db0-a99f-8c74636186cf2026-06-16 19:27:49.967496+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
e85afe98-952a-4f6b-8f38-2d67462a8f1c    2026-06-16 19:31:20.927968+00   2026-06-16 19:31:20.927977+00        f       \N      26_35   1       ELEVEE  t       d31efbcd-63f1-4b9d-9bdf-b0f4c82f63f7 2026-06-16 19:31:20.932313+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
135841a7-decf-4152-9aff-9eb15271b59c    2026-06-16 19:33:44.364632+00   2026-06-16 19:33:44.364642+00        f       Maria   26_35   1       ELEVEE  t       7e258052-fed8-4558-b7f1-ae16b16895e1 2026-06-16 19:33:44.369926+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
63f4c1ee-77d3-484f-9f0b-6075e3222048    2026-06-16 19:36:02.519088+00   2026-06-16 19:36:02.519098+00        f       Scott   36_50   1       ELEVEE  t       a89c4400-a80a-4035-b44d-0707e0d51843 2026-06-16 19:36:02.523245+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199c60f3a68-0f6d-41cf-ad40-ad1de2843bc1     c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
c51038d5-ed05-4656-90be-d21eda807772    2026-06-16 19:37:19.306889+00   2026-06-16 19:37:19.306898+00        f       Edgard  26_35   1       ELEVEE  t       5030f1e8-32bc-4b61-882c-30c5a569bf5c 2026-06-16 19:37:19.311774+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
7d6f5484-8c1a-4701-99a4-a110ac98eb2f    2026-06-16 20:00:17.040091+00   2026-06-16 20:00:17.040102+00        f       Christ  26_35   1       ELEVEE  t       deb17b66-7195-4fae-8343-19d6550a9dfb 2026-06-16 20:00:17.045201+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
8bd0705e-8007-482b-9ed9-b22be7e72630    2026-06-16 20:01:13.306492+00   2026-06-16 20:01:13.306501+00        f       Smaelle 26_35   1       ELEVEE  t       118037e6-3d33-43b6-a837-9ffb738d6350 2026-06-16 20:01:13.310279+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
074b79bc-7225-4de5-9737-9fe59b1c74a5    2026-06-16 20:04:39.548347+00   2026-06-16 20:04:39.548356+00        f       Willy   26_35   1       ELEVEE  t       5f6cb756-4c5a-4eee-8a46-cecc3693b668 2026-06-16 20:04:39.552858+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
79825209-9ee2-4be3-abea-598ee15e86e1    2026-06-16 20:05:45.398885+00   2026-06-16 20:05:45.398898+00        f       Jeff    26_35   1       ELEVEE  t       530fad8b-573d-40f3-bc63-34882870e7e7 2026-06-16 20:05:45.403035+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a15310b7-4fc1-4b73-8867-89dddc8e3c5d    2026-06-16 20:12:09.279952+00   2026-06-16 20:12:09.279966+00        f       Mz      26_35   1       ELEVEE  t       9251c23c-98e8-4154-aa2d-8d5df252a36b 2026-06-16 20:12:09.28578+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0df1dc02-401e-47f5-b4b3-6c1bf4beef6d    2026-06-16 20:12:28.511099+00   2026-06-16 20:12:28.51111+00 f       \N      36_50   1       ELEVEE  t       dfb95451-e4d7-46f6-b093-bdcc6a89c4d72026-06-16 20:12:28.515269+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
304c81c9-0208-497b-9926-05f1e9e78989    2026-06-16 20:12:30.551967+00   2026-06-16 20:12:30.551977+00        f       Marie   26_35   1       ELEVEE  t       54ac7186-6bd6-40ab-8489-b763d0357b69 2026-06-16 20:12:30.556287+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
93c01166-09eb-4e6e-94c2-4626b07049bd    2026-06-16 20:19:03.336564+00   2026-06-16 20:19:03.336573+00        f       Alexandre       36_50   1       ELEVEE  t       2bc4112b-a5aa-4449-950d-59039a5c8624 2026-06-16 20:19:03.341523+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
a9ff19c5-cf3c-4910-b4bd-6cdc202d7e05    2026-06-16 20:24:55.190317+00   2026-06-16 20:24:55.190327+00        f       Dg      36_50   1       ELEVEE  t       3d326c39-0e63-40a8-9ce1-20d2dd4a1bb6 2026-06-16 20:24:55.195088+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5a0a53a4-be49-43a2-adcc-8e65dbbf06da    2026-06-16 20:25:09.00805+00    2026-06-16 20:25:09.00806+00 f       Randy   26_35   1       ELEVEE  t       0a62d67c-b5d8-4cd7-8204-86f42484d7872026-06-16 20:25:09.011927+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
049c6e92-5423-4b60-bcdb-cd3084e5895f    2026-06-16 20:28:41.87926+00    2026-06-16 20:28:41.87927+00 f       Lucapi  36_50   1       ELEVEE  t       03e3d1a2-b253-4f94-bc6d-d358fbf4e5f52026-06-16 20:28:41.883373+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
43b420f0-60fd-4976-8093-497002ccd516    2026-06-16 20:28:45.743787+00   2026-06-16 20:28:45.743797+00        f       Junior  26_35   1       ELEVEE  t       51efeb85-4d96-4335-afae-dc5772844480 2026-06-16 20:28:45.747855+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
b7a916de-29ec-4c55-ab94-fe585b163111    2026-06-16 20:31:48.809078+00   2026-06-16 20:31:48.809089+00        f       Lucapy  36_50   1       ELEVEE  t       883f7f05-1dda-47da-8cde-6757c47552a8 2026-06-16 20:31:48.813195+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
79bd5834-18e6-42b8-a7d3-218a7dc9e759    2026-06-16 21:22:42.881438+00   2026-06-16 21:22:42.881448+00        f       Luc     36_50   1       ELEVEE  t       0335163b-d6f8-43a7-823e-465c237b516e 2026-06-16 21:22:42.88627+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
455a56bf-1a46-4d7c-82a0-913c2b628fcc    2026-06-16 22:07:41.033778+00   2026-06-16 22:07:41.033792+00        f       Kévin   36_50   1       ELEVEE  t       a12f3efa-05fd-4ab3-801d-49244ade059f 2026-06-16 22:07:41.038659+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
ae2c83a0-204c-4da6-bed9-4b9446b87aa7    2026-06-16 22:08:12.735884+00   2026-06-16 22:08:12.735897+00        f       Océane  26_35   1       ELEVEE  t       480fca98-fc79-4f84-b7a9-13478cc842be 2026-06-16 22:08:12.740691+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
a5d07e21-f566-4f55-9748-86e16b9944cb    2026-06-16 22:09:21.95644+00    2026-06-16 22:09:21.956451+00        f       Bienvenue       26_35   1       ELEVEE  t       873695c0-0b30-430b-b374-5961cec01f7e 2026-06-16 22:09:21.960853+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
7b17c6fc-e7dc-4fe2-b6b7-8c30172b3849    2026-06-17 16:26:19.80222+00    2026-06-17 16:26:19.802231+00        f       Bryan   18_25   1       ELEVEE  t       bf4ad48f-1582-4352-a0f3-88e985b2e483 2026-06-17 16:26:19.810547+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
fdb0e8ee-cde6-4d90-96b8-587cdbcfb038    2026-06-17 16:52:31.359431+00   2026-06-17 16:52:31.359441+00        f       Jean    26_35   1       ELEVEE  t       fc66cf56-6bb9-4e9d-a08e-8b947a16a2f3 2026-06-17 16:52:31.364295+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
22266cb3-11a1-44a9-aafe-54b016a9ffa4    2026-06-17 16:55:27.04906+00    2026-06-17 16:55:27.049072+00        f       Jack    36_50   1       ELEVEE  t       5be59b5f-49ce-4d64-92f1-982463225dbf 2026-06-17 16:55:27.054223+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
6201a8a6-1547-4b6b-96ba-c9a85b8aa43b    2026-06-17 16:58:25.238972+00   2026-06-17 16:58:25.238982+00        f       Jacques 26_35   1       ELEVEE  t       eaa19048-5058-4da7-afd1-bd4da51c5350 2026-06-17 16:58:25.24549+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
bd29cdea-5e6c-47ee-89d1-f7ab4ef886c4    2026-06-17 17:11:48.742192+00   2026-06-17 17:11:48.742202+00        f       Christ  26_35   1       ELEVEE  t       92fc158f-cdb2-47e8-8c47-cac6e85acd23 2026-06-17 17:11:48.746899+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
05e1886e-d5bc-40d2-8ec9-1682386bcb4a    2026-06-17 17:12:49.517957+00   2026-06-17 17:12:49.517966+00        f       David   26_35   1       ELEVEE  t       e083afa0-8ba1-44d7-9f8b-ed7db5390bff 2026-06-17 17:12:49.527073+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
a8769d18-6bc7-4f29-9e35-686aa4b9c621    2026-06-17 17:17:36.721602+00   2026-06-17 17:17:36.721612+00        f       Stifleur        26_35   1       ELEVEE  t       493a196e-3cbe-4c6d-8e4d-136741aedd66 2026-06-17 17:17:36.726157+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
358d4022-ad5b-4c89-96fe-e3a2f035d05b    2026-06-17 17:49:06.566557+00   2026-06-17 17:49:06.566567+00        f       Edgard  36_50   1       ELEVEE  t       87dd438e-6f53-4668-800b-f9cfa564d457 2026-06-17 17:49:06.572178+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
45fb4bd2-ca58-48f2-99e0-4d7d1d17dd54    2026-06-17 18:21:19.363779+00   2026-06-17 18:21:19.363791+00        f       Test    18_25   1       ELEVEE  t       773b5f69-fa8c-421b-bde7-4581fa4010cf 2026-06-17 18:21:19.369793+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    386e4259-2682-44ba-9073-59eb73919e88 31ab0910-ff6c-4f50-abd1-6054890c27b2
99a9ed82-f898-4968-b399-8023cd770b62    2026-06-17 18:28:07.255604+00   2026-06-17 18:28:07.255617+00        f       Henry   36_50   1       ELEVEE  t       342d1b58-0bf9-4752-8a35-fff5026d7133 2026-06-17 18:28:07.261096+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3d661308-a59b-4715-9ce8-276b2cea3189    2026-06-17 18:43:47.976175+00   2026-06-17 18:43:47.976187+00        f       Rikiel  26_35   1       ELEVEE  t       b7a14641-bd90-47e1-80ae-1bd71b4b8e89 2026-06-17 18:43:47.981111+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
6543ca8f-a69b-467c-81ea-2640dbca16d0    2026-06-17 18:45:59.327464+00   2026-06-17 18:45:59.327477+00        f       Sandra  26_35   1       ELEVEE  t       7ea5207e-3882-4535-ab86-b7a030349233 2026-06-17 18:45:59.34127+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
b2f7564d-06c4-40b6-b76a-7e35d9fa32a2    2026-06-17 18:46:00.91344+00    2026-06-17 18:46:00.913451+00        f       FLEUR   18_25   1       ELEVEE  t       9541b3f6-002c-4924-8c04-58c9c8f38264 2026-06-17 18:46:00.918512+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
cdd68318-5a35-4efd-bd53-28ebfc0d07c6    2026-06-17 18:46:27.074516+00   2026-06-17 18:46:27.074525+00        f       Steeve  36_50   1       ELEVEE  t       1c1b1707-2809-4da7-be3d-ce571936ab71 2026-06-17 18:46:27.078978+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
3babc17a-f30f-40e8-a224-206aa0352a64    2026-06-17 18:48:48.461487+00   2026-06-17 18:48:48.461501+00        f       Bertrand        36_50   1       ELEVEE  t       74860c8b-c50a-42f5-8139-b8c8f4103d5c 2026-06-17 18:48:48.465968+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
fc0c891f-af37-4b24-9d43-cc8da07c6807    2026-06-17 18:56:44.94604+00    2026-06-17 18:56:44.94605+00 f       601     26_35   1       ELEVEE  t       ae6e76b7-1604-4a24-96ad-8e140a4498522026-06-17 18:56:44.953007+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
2cd6f7e5-bee9-45d6-aacf-4a85d71bfa7c    2026-06-17 19:08:21.704539+00   2026-06-17 19:08:21.704549+00        f       Rame    36_50   1       ELEVEE  t       fe20b440-7fca-4160-a71a-65e28dee256d 2026-06-17 19:08:21.711326+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd     5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
79312937-fcaa-4164-88da-6ea2e16179ae    2026-06-17 19:44:23.726135+00   2026-06-17 19:44:23.726143+00        f       Smaëlle 26_35   1       ELEVEE  t       51e2945f-a036-4eb7-b0ed-305fb2a44d52 2026-06-17 19:44:23.744116+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
9b2a3058-a51c-4618-b4b3-012f33ff6d3c    2026-06-17 19:50:40.411454+00   2026-06-17 19:50:40.411463+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       72de5e4a-edbc-485a-be52-3b6f131fac1c 2026-06-17 19:50:40.417386+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
e9cb1772-88c5-4633-bfb1-05d50213de72    2026-06-17 19:51:43.860713+00   2026-06-17 19:51:43.860724+00        f       Nino    26_35   1       ELEVEE  t       08a81939-d25a-4515-a7bd-f876d4b8868c 2026-06-17 19:51:43.86426+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
913876fb-cd14-453e-ab58-90aec5d5c868    2026-06-17 19:53:10.188403+00   2026-06-17 19:53:10.188419+00        f       Smaëlle 26_35   1       ELEVEE  t       23cabaf5-2851-4d5e-9539-ba52b124729c 2026-06-17 19:53:10.197252+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
7b8fb5a9-1902-45f9-b100-05323420cf9e    2026-06-17 19:55:04.05453+00    2026-06-17 19:55:04.05454+00 f       EKOMI EKOMI     36_50   1       ELEVEE  t       ab3b46a5-1636-4074-978b-92cbafda5dfa 2026-06-17 19:55:04.058907+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
5827e128-fff0-4971-9586-3e291e1957b8    2026-06-17 19:56:32.157985+00   2026-06-17 19:56:32.157996+00        f       Cavid   26_35   1       ELEVEE  t       cee8eb9d-c42e-4652-887d-2e745b94eba1 2026-06-17 19:56:32.167487+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
18f825f6-9a14-4903-b747-4f62551bd111    2026-06-17 20:08:45.205282+00   2026-06-17 20:08:45.205293+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       9dedf2be-43c8-4cb6-8b7b-7e3a6d92de78 2026-06-17 20:08:45.209968+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
0afea9cf-a43a-486a-95e0-02f16c794154    2026-06-17 20:13:49.676196+00   2026-06-17 20:13:49.676207+00        f       Vincent 36_50   1       ELEVEE  t       d0cfcee3-d6d7-4000-83c1-438494384509 2026-06-17 20:13:49.680607+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
fa87b1c5-81bd-42fe-a9cc-9cb93753ab65    2026-06-17 20:20:10.237916+00   2026-06-17 20:20:10.237924+00        f       Hugor   36_50   1       ELEVEE  t       e1cf8577-f5ee-4474-af3f-8dc4f5dce398 2026-06-17 20:20:10.249169+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4     832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
bf039b1d-6ab7-4b1b-a924-2c0a5caf3372    2026-06-17 20:23:52.08811+00    2026-06-17 20:23:52.088121+00        f       Flo     36_50   1       ELEVEE  t       86d70cb5-ce4d-41b1-a277-fb594f756a94 2026-06-17 20:23:52.091853+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
6bbc4877-8eac-4c63-a86f-511e30c81b46    2026-06-17 20:28:49.873421+00   2026-06-17 20:28:49.87343+00 f       Jule    26_35   1       ELEVEE  t       806475d6-f512-40e9-af6a-6418a38cbe3b2026-06-17 20:28:49.877092+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
9de4ad0e-e501-42b0-a7b7-aaee41cb10fa    2026-06-17 20:30:41.581325+00   2026-06-17 20:30:41.581338+00        f       Eloi    26_35   1       ELEVEE  t       8dcf3fd9-3088-49b8-9ecb-47897f52829b 2026-06-17 20:30:41.586187+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
1ad29c26-928d-447c-97b4-d03d283b5e81    2026-06-17 20:34:06.813302+00   2026-06-17 20:34:06.813312+00        f       Florez  36_50   1       ELEVEE  t       887a0c4c-f236-4a7b-8e29-cb5d765ea0ca 2026-06-17 20:34:06.817253+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219931ba448e-4d7e-4857-bbcb-aed0ce6ee5d6     31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
93e9e35c-0b31-42dd-b37e-2372e095022c    2026-06-17 20:40:50.889589+00   2026-06-17 20:40:50.889599+00        f       Aricle  26_35   1       ELEVEE  t       8483b0a3-090d-4228-8ca8-9ab178e1be19 2026-06-17 20:40:50.897111+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
2100bf66-e1b4-4ddf-a3db-a5adcb72c523    2026-06-17 20:45:13.686326+00   2026-06-17 20:45:13.686337+00        f       EKOMI EKOMI     36_50   1       ELEVEE  t       3d0c7e69-f41f-4dfa-b940-dc6494bf94d4 2026-06-17 20:45:13.690635+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
770f8472-5d35-453a-a663-c8ee76924c02    2026-06-17 20:49:26.151495+00   2026-06-17 20:49:26.151503+00        f       Ekomi   36_50   1       ELEVEE  t       7da69488-f624-4c05-be33-d3d64327407b 2026-06-17 20:49:26.1616+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
dfeb0a67-b324-43e9-a9fd-584e559e64a8    2026-06-17 20:52:49.272243+00   2026-06-17 20:52:49.272261+00        f       Smaeelle        26_35   1       ELEVEE  t       7c3cc558-b15d-44ca-8490-92980cb087f6 2026-06-17 20:52:49.275738+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
d7e70698-7a57-4d86-ae4e-cf7a55288994    2026-06-17 21:04:44.229911+00   2026-06-17 21:04:44.22992+00 f       Tresor  18_25   1       ELEVEE  t       2d9f09e7-116e-4652-b231-7e6622e2ab552026-06-17 21:04:44.238225+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
828b91e1-df48-40c3-857c-f1f4180dc981    2026-06-17 21:05:18.680166+00   2026-06-17 21:05:18.680175+00        f       Elysee  26_35   1       ELEVEE  t       f88915fe-2a5f-4878-8212-3a26ad8de654 2026-06-17 21:05:18.683947+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
e4d21270-96d7-4cfa-b31c-b295c9b136dc    2026-06-17 21:07:20.607511+00   2026-06-17 21:07:20.60752+00 f       Smaelle 36_50   1       ELEVEE  t       65382b06-cb89-4e19-895f-a8233809c96e2026-06-17 21:07:20.61158+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
49349129-1eb6-4488-9adb-7cf4d7a06a99    2026-06-17 21:07:42.662401+00   2026-06-17 21:07:42.662412+00        f       Jull    26_35   1       ELEVEE  t       6020921e-2cc1-4236-9bfd-5be800104e52 2026-06-17 21:07:42.665927+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd     5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
214b8aac-860e-4b6e-9af1-5fc5a80b6dd8    2026-06-17 21:10:52.293899+00   2026-06-17 21:10:52.293908+00        f       Owee    26_35   1       ELEVEE  t       5cf2959b-605f-4460-a189-39720deb3f09 2026-06-17 21:10:52.304823+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
22f96b68-1b4d-4e24-95b8-fa94216e56f3    2026-06-17 21:12:13.301382+00   2026-06-17 21:12:13.301392+00        f       Osee    26_35   1       ELEVEE  t       ccdda5d7-743b-4c1f-a1f6-a2bc6550d075 2026-06-17 21:12:13.305992+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e9219977e0d595-d6da-4158-8f75-2e4f9947e156     77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
2788a767-7073-4ea3-aac1-af3c5ee7e38b    2026-06-17 21:14:40.857763+00   2026-06-17 21:14:40.857773+00        f       Melvy’ne        26_35   1       ELEVEE  t       0f7ecbcd-c2da-4491-8351-bec0d6d21042 2026-06-17 21:14:40.864052+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
fec0424d-19e2-4b73-8b95-0b6c56bdbcbc    2026-06-17 22:19:09.327679+00   2026-06-17 22:19:09.327689+00        f       \N      18_25   3       MOYENNE t       682e4950-950a-40da-bc6b-a7186d57b211 2026-06-17 22:19:09.331776+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
55284e6c-eeae-4593-b69d-a9f24c5b7c4a    2026-06-17 22:38:07.87342+00    2026-06-17 22:38:07.873429+00        f       \N      18_25   3       MOYENNE t       924449a5-74a3-4392-824d-4f87a0d0405a 2026-06-17 22:38:07.87776+00    \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d5da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
121fa238-7639-413d-887b-648a35d1205e    2026-06-17 22:44:59.34763+00    2026-06-17 22:44:59.347672+00        f       test    18_25   3       MOYENNE f       f8db9072-cb85-4022-b1d6-71841146473a 2026-06-17 22:44:59.356299+00   \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d5da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
c7f90f01-7eec-4a16-8e3d-dacb7de5af5b    2026-06-17 22:45:29.16537+00    2026-06-17 22:45:29.165381+00        f       \N      18_25   3       MOYENNE f       9a6f906b-73a0-41fb-8c23-8cc29ac76bfa 2026-06-17 22:45:29.168907+00   \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d5da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
d3271e04-350f-4b2d-ac74-c49136e05d3d    2026-06-17 22:52:29.288417+00   2026-06-17 22:52:29.288475+00        f       \N      26_35   2       MOYENNE f       152b644c-4088-4591-9315-3d1fb0b0cfa4 2026-06-17 22:52:29.54578+00    \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d5da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
301ebeee-4bb5-4341-8941-c8f574a4dc3c    2026-06-17 22:57:33.363817+00   2026-06-17 22:57:33.363883+00        f       \N      MOINS_18        3       MOYENNE f       19718671-06a5-4f33-abdb-e7bf2384f40e 2026-06-17 22:57:33.649543+00   \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
422a7b80-c69c-44c5-8729-2d2d914425a3    2026-06-17 23:07:13.284278+00   2026-06-17 23:07:13.284352+00        f       \N      18_25   3       MOYENNE f       57c643e3-2473-454e-ac89-8ff93720c93f 2026-06-17 23:07:14.707717+00   \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d5da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc
8f566459-be20-4f56-94a7-5f33ebff45c2    2026-06-18 08:29:29.514195+00   2026-06-18 08:29:29.514203+00        f       \N      18_25   1       ELEVEE  t       bcc6553d-6a0c-4e08-bf28-7286ad79a8a6 2026-06-18 08:29:29.522962+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
dc68e0d6-0438-4a51-b1c9-2ca8f6b17520    2026-06-18 09:29:00.334214+00   2026-06-18 09:29:00.334224+00        f       Edmond  26_35   1       ELEVEE  t       0b9cadc7-17e8-4076-a99c-316028262b70 2026-06-18 09:29:00.340886+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921999965cbe1-3a28-4c15-97c7-08bb532dbb8c     9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2
4d84e27e-834c-4b73-bab0-dfc61ab92e26    2026-06-18 11:13:24.458496+00   2026-06-18 11:13:24.458506+00        f       SERGE   18_25   1       ELEVEE  t       40da12ce-a817-4c0c-b042-ec4803cb13c2 2026-06-18 11:13:24.464254+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
70b20073-e859-4e64-bad8-866e0a97df64    2026-06-18 11:25:30.670216+00   2026-06-18 11:25:30.670226+00        f       ef      18_25   1       ELEVEE  t       2ba10787-74f7-44a9-b09c-53df5b03dc52 2026-06-18 11:25:30.675267+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade
e434effc-3564-493a-b69a-f999894e9bc7    2026-06-18 11:26:08.506213+00   2026-06-18 11:26:08.506221+00        f       \N      26_35   3       MOYENNE t       9122c366-a22b-4f18-868e-e44c764c4609 2026-06-18 11:26:08.509746+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
508a2574-d556-42be-9b7a-b9ea3d40cfd3    2026-06-18 11:30:07.315878+00   2026-06-18 11:30:07.315889+00        f       ZAZIE   18_25   1       ELEVEE  t       ff2215ab-eef1-45af-aeae-328e01839242 2026-06-18 11:30:07.321845+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
4a2eb2c1-07e4-4b5b-8edf-f1c6521332bf    2026-06-18 11:31:06.542876+00   2026-06-18 11:31:06.542884+00        f       ELODIE  18_25   1       ELEVEE  t       237cc21a-2fe8-4bb6-8eba-4c4e08c96ad1 2026-06-18 11:31:06.549252+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
f2219b02-dfb8-46e8-8754-3202ccee2d85    2026-06-18 11:31:58.67502+00    2026-06-18 11:31:58.67503+00 f       EVODIE  26_35   1       ELEVEE  t       f4cc5b9b-b499-4ccf-8503-e4e4a7ebffd72026-06-18 11:31:58.678164+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
dcf6d604-68b3-481e-b630-bebe843dfedc    2026-06-18 11:32:28.96189+00    2026-06-18 11:32:28.9619+00  f       ERREUR  36_50   1       ELEVEE  t       cf782daa-9c00-438c-b1a0-d87a660ba2c92026-06-18 11:32:28.965417+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade
350c2b9d-e360-4224-85aa-066692fcc435    2026-06-18 13:22:57.488629+00   2026-06-18 13:22:57.48864+00 f       ANGIE   26_35   1       ELEVEE  t       6ca2c747-f644-4fce-95de-ceb70289b6122026-06-18 13:22:57.499396+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
7e812823-a5c3-46c2-958a-03b834c508f3    2026-06-18 14:55:35.747226+00   2026-06-18 14:55:35.747237+00        f       ANGIE   18_25   1       ELEVEE  t       d2eb22e5-d062-4f0c-9fed-e7e7030f6033 2026-06-18 14:55:35.752466+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
6c1f6af4-b311-4a2b-b87f-de1f31f56ab4    2026-06-18 15:04:53.394456+00   2026-06-18 15:04:53.394467+00        f       Bissa   18_25   1       ELEVEE  t       4a90ff25-b6c1-48d4-b3ea-8e0e6a3782e6 2026-06-18 15:04:53.39951+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
c920a1b6-6091-4817-a09d-ab869d218892    2026-06-18 15:07:17.063575+00   2026-06-18 15:07:17.063584+00        f       YVAN    26_35   1       ELEVEE  t       1f01d706-5d6c-48f9-987c-96938ddae028 2026-06-18 15:07:17.065362+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
641ad420-7db9-4ca7-8f29-75936d8de307    2026-06-18 15:22:51.685202+00   2026-06-18 15:22:51.685212+00        f       SERGINE 26_35   1       ELEVEE  t       1022f433-ef4b-4675-b0ff-bc545067c1bc 2026-06-18 15:22:51.68782+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
f577d6a9-4a27-42fe-9a07-9963689cc9e9    2026-06-18 15:27:29.491714+00   2026-06-18 15:27:29.491724+00        f       PEPITE  26_35   1       ELEVEE  t       e5a0d37e-24e4-433a-9904-98ad8ef2bb25 2026-06-18 15:27:29.494144+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade
c50f25b8-b3e0-4f3e-b85a-b0a4e18d711d    2026-06-18 15:28:13.13958+00    2026-06-18 15:28:13.139588+00        f       AURELIEN        26_35   1       ELEVEE  t       d1cc2a4a-1f82-4090-8d2d-7a76aba8a239 2026-06-18 15:28:13.141438+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade
111dff40-c623-4d80-b7b7-a5ee60a88656    2026-06-18 15:42:54.516282+00   2026-06-18 15:42:54.516293+00        f       SABRINA 26_35   1       ELEVEE  t       d7e1d1f0-a532-4294-817c-0c3441083b47 2026-06-18 15:42:54.520244+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
a824421c-3f82-4e7c-9dd0-57555cd618b8    2026-06-18 16:20:17.692726+00   2026-06-18 16:20:17.692735+00        f       \N      18_25   3       MOYENNE t       04b73bb6-976e-4d5a-a664-b60304c2488e 2026-06-18 16:20:17.697095+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa45da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade
6425b212-175c-43f1-b3de-430b48dece26    2026-06-18 16:59:06.915683+00   2026-06-18 16:59:06.915692+00        f       AURELIEN        18_25   1       ELEVEE  t       8e62670f-95ca-41c0-9a2a-6dd9ec6dcea8 2026-06-18 16:59:06.918115+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0cf96a23-f1b1-4df7-8545-22ba584dea47    2026-06-18 17:06:46.026478+00   2026-06-18 17:06:46.02649+00 f       DIAMELA 18_25   1       ELEVEE  t       8584763f-ae9d-4ffa-b321-96ad9976dc0b2026-06-18 17:06:46.030225+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
01cfc1ac-571a-449b-a9a5-7ec1fc62457f    2026-06-18 17:11:45.091591+00   2026-06-18 17:11:45.091602+00        f       JESSE   18_25   1       ELEVEE  t       a993c86d-fff7-4554-b7db-2b3ba0f4fb93 2026-06-18 17:11:45.094556+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
43b43f3f-d2fd-4f6c-9ab6-c47ada1b2605    2026-06-18 22:33:54.613806+00   2026-06-18 22:33:54.613816+00        f       Elisée  26_35   1       ELEVEE  t       bf9c5236-1fa6-45b1-a6b9-fd9e9f4d719f 2026-06-18 22:33:54.617759+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e921995da8d279-2b6f-4bcc-bc7b-94b7a9865f25     5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_historicalentreprise; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalentreprise (id, created_at, updated_at, is_deleted, nom_commercial, telephone, adresse, history_id, history_date, history_change_reason, history_type, history_user_id, user_id, couleur_primaire, couleur_secondaire, logo_url) FROM stdin;
22898852-840c-4c01-9d7b-89a68ff5cce4    2026-06-11 17:07:24.14273+00    2026-06-11 17:07:24.142734+00        f       33 EXPORT                       587ed8b5-1465-4ef1-98b2-25459c70d7922026-06-11 17:07:24.143964+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    eeb0a090-3adb-44d4-9489-a0c1f968c4ab #c51b1b #0d0c0c data:image/png;base64,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
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-11 18:35:42.22112+00 f       Ceverine                        3471f38c-608b-430c-aca7-0a924dd161b2    2026-06-11 18:35:42.221758+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ee696594-655c-4e8b-ac92-b7b9fc2015f9 #006776 #00899b \N
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-12 17:29:44.586093+00        f       Ceverine                        fc271ca6-dd57-4c5c-8b8f-3a0464f1f4a62026-06-12 17:29:44.587985+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ee696594-655c-4e8b-ac92-b7b9fc2015f9 #190075 #99004a \N
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-17 14:16:17.287856+00        f       Ceverine                        3eb3a70d-cb89-4988-aeaa-1a590170e0fe2026-06-17 14:16:17.29163+00     \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ee696594-655c-4e8b-ac92-b7b9fc2015f9 #190075 #99004a \N
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-17 19:38:03.990152+00        f       Ceverine                        a0266c3e-4149-4df9-9981-22b259485af92026-06-17 19:38:03.997234+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ee696594-655c-4e8b-ac92-b7b9fc2015f9 #190075 #99004a \N
d871013c-b3b7-451c-af35-800d1ab9538c    2026-06-11 18:35:42.221115+00   2026-06-17 22:37:00.624584+00        f       Ceverine                        b2e0f065-4ccb-4a48-b51b-a50b2c4f71ea2026-06-17 22:37:00.628852+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ee696594-655c-4e8b-ac92-b7b9fc2015f9 #190075 #99004a \N
\.


--
-- Data for Name: btl_historicalgaingoodie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalgaingoodie (id, created_at, updated_at, is_deleted, history_id, history_date, history_change_reason, history_type, degustation_id, goodie_id, history_user_id, promotion_id, site_id, nom_client, produit_associe_id, quantite_produit, hotesse_id) FROM stdin;
362ecf12-14fd-4a6d-a1c6-28562e1128b5    2026-06-17 22:55:34.431934+00   2026-06-17 22:55:34.431943+00        f       95359017-a515-4d8b-a79c-e3df15cc1451    2026-06-17 22:55:34.696055+00\N      +       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      0ab94840-ff6c-44da-92b9-14bdef894bfc    Client  \N      1       \N
4eac806f-0b38-4807-b7b1-15902ec6eec2    2026-06-17 22:57:55.152776+00   2026-06-17 22:57:55.152812+00        f       3bbbda4a-d70c-4a14-ad4a-178d67d322d4    2026-06-17 22:57:55.414195+00\N      +       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      0ab94840-ff6c-44da-92b9-14bdef894bfc    Client  \N      1       \N
ed05725a-b470-48d4-9051-306942d51911    2026-06-17 23:09:42.838104+00   2026-06-17 23:09:42.838111+00        f       00f3cde4-09fd-4039-9f25-ce9c1fb4201f    2026-06-17 23:09:44.252145+00\N      +       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      0ab94840-ff6c-44da-92b9-14bdef894bfc    Client  \N      1       \N
52ee86d1-4f85-4bf5-b4ac-4a0b67f08eaf    2026-06-17 23:20:43.025063+00   2026-06-17 23:20:43.025074+00        f       f34dd9de-5304-4f60-8fbd-6d6e134d56bf    2026-06-17 23:20:44.020467+00\N      +       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      0ab94840-ff6c-44da-92b9-14bdef894bfc    test    \N      1       \N
b31dea6f-8841-4f99-9ee9-b72b5d12e8e1    2026-06-18 14:58:59.987191+00   2026-06-18 14:58:59.987195+00        f       4016469a-e67e-4ccf-9479-79453af5b1ff    2026-06-18 14:58:59.988151+00\N      +       \N      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      0ab94840-ff6c-44da-92b9-14bdef894bfc    test    \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
1c8564ba-f1f1-4116-91f4-84c267812134    2026-06-18 14:59:13.086269+00   2026-06-18 14:59:13.086274+00        f       c737be7b-011e-48d9-80b8-011f8a3bbe60    2026-06-18 14:59:13.08672+00\N       +       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    test    \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
ba70106b-095c-49f0-b2e5-9b9a3adbb9f6    2026-06-18 15:03:05.340754+00   2026-06-18 15:03:05.34076+00 f       d3d0b977-b28a-4b66-861e-3bab8c6fd1f2    2026-06-18 15:03:05.341588+00   \N  +\N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    \N  98e0c8c7-248c-480d-a84b-04a8e4b8aade     ANGIE   \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
a342c8d9-b59a-44a9-b1b3-ae00510aa007    2026-06-18 15:05:05.742055+00   2026-06-18 15:05:05.742061+00        f       36a62b44-beeb-49a5-af38-84a3911064fc    2026-06-18 15:05:05.742503+00\N      +       \N      1206e226-e1c8-418e-bc4e-557a470e5328    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    Bissa   \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
78abefce-c13e-4589-a1e8-18d29c591b2c    2026-06-18 15:20:22.420562+00   2026-06-18 15:20:22.420567+00        f       99114d71-8470-4e90-b7cf-c186fab2d6e3    2026-06-18 15:20:22.421086+00\N      +       \N      79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    YVAN    \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
add2e0ed-f549-4259-b572-ed568668b009    2026-06-18 15:23:01.036557+00   2026-06-18 15:23:01.036563+00        f       86547d57-97e2-4ee7-94a7-8e6d6aa80081    2026-06-18 15:23:01.037066+00\N      +       \N      9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    SERGINE \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
41800fb9-4aa1-4b8f-b48b-97066ee80242    2026-06-18 15:27:45.103706+00   2026-06-18 15:27:45.103711+00        f       50d34495-a37d-4a38-88fb-9fded1ebf9f7    2026-06-18 15:27:45.104126+00\N      +       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    PEPITE  \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
d8ca8f91-1918-44ef-a96b-efc1a5cc9078    2026-06-18 15:28:21.733266+00   2026-06-18 15:28:21.733272+00        f       7745b95a-a817-495f-93ca-b7e4e986975b    2026-06-18 15:28:21.733678+00\N      +       \N      4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    AURELIEN        \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
20ffb972-04ed-4f8e-9c36-76c7c27bcc72    2026-06-18 15:43:06.293042+00   2026-06-18 15:43:06.293047+00        f       66355799-02dc-4ad4-8a07-eef9880245d3    2026-06-18 15:43:06.293684+00\N      +       \N      d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      98e0c8c7-248c-480d-a84b-04a8e4b8aade    SABRINA \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
498a20fc-d353-4e51-a613-6055c803e741    2026-06-18 22:34:08.304741+00   2026-06-18 22:34:08.304746+00        f       6b965ce9-824b-4bb7-91fb-9282ec1869ea    2026-06-18 22:34:08.305374+00\N      +       \N      a048da9b-fb75-43ae-a6d7-eaa931fec707    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 \N      b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    Elisée  \N      1       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
\.


--
-- Data for Name: btl_historicalgainpromotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalgainpromotion (id, created_at, updated_at, is_deleted, quantite_produits_concernes, nom_client, tranche_age, history_id, history_date, history_change_reason, history_type, campagne_id, history_user_id, hotesse_id, promotion_id, site_id) FROM stdin;
9d62d46d-b25c-4610-b173-e06e27bfa981    2026-06-11 18:48:31.355786+00   2026-06-11 18:48:31.355796+00        f       3       \N      \N      0c53b836-06b8-45db-bf80-d1a786e9e566    2026-06-11 18:48:31.358428+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7f3d2d42-092c-4d74-abca-10c7e6531197    2026-06-11 18:49:02.490683+00   2026-06-11 18:49:02.490694+00        f       3       \N      \N      34e73687-3b7d-4cd6-8bda-e2c8c923cd61    2026-06-11 18:49:02.491541+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d4a6f9a6-d328-4b80-b585-49b2f6269f8c    2026-06-11 19:11:42.988568+00   2026-06-11 19:11:42.988583+00        f       3       \N      \N      2c01cca4-227f-410e-8aad-02964973df50    2026-06-11 19:11:42.993022+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7a657e29-749c-45f9-81f0-26c364ef4409    2026-06-11 19:13:11.362879+00   2026-06-11 19:13:11.362892+00        f       3       Evan’s  \N      f184cc32-dc39-48c1-af85-8eb02763e7d6    2026-06-11 19:13:11.367185+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
f013f46e-c594-4c01-916e-466fe54686b6    2026-06-11 19:13:34.663185+00   2026-06-11 19:13:34.663194+00        f       3       Irene   \N      67c39763-251c-4cb8-8a88-b0204492c3b4    2026-06-11 19:13:34.667871+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
40b21d1a-e711-4bae-a341-192403bf027a    2026-06-11 19:14:12.765479+00   2026-06-11 19:14:12.765489+00        f       3       Frédéric        \N      4a8b9138-e236-42d1-ae55-a916bf9f8cb62026-06-11 19:14:12.769958+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
b7c311d8-ba27-4c2f-9e5f-2a683453fa10    2026-06-11 19:16:40.063237+00   2026-06-11 19:16:40.063246+00        f       3       Gislin  \N      f3395c69-2ead-4647-832c-c405ec1e31d6    2026-06-11 19:16:40.067432+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
e0d1a269-165f-4505-aae0-9a31c3a082af    2026-06-11 19:18:43.929838+00   2026-06-11 19:18:43.929851+00        f       6       \N      \N      66858287-39b7-41b5-b362-dcf6f565b7bc    2026-06-11 19:18:43.934144+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
42a7c78a-b682-466f-a639-c7b0f942d646    2026-06-11 19:23:17.893084+00   2026-06-11 19:23:17.893094+00        f       3       \N      \N      48811b98-e1e3-4935-b5d4-4fd45b2e146e    2026-06-11 19:23:17.897355+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
fa8a7b06-c746-43ff-9dd8-5460cfc8b894    2026-06-11 19:27:20.630329+00   2026-06-11 19:27:20.630338+00        f       3       Franck  \N      3f4de26d-9f31-4ef2-84ad-e18c3d189760    2026-06-11 19:27:20.637844+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
f985d9ee-e0a8-4858-82b1-e835aa314e78    2026-06-11 19:27:51.76751+00    2026-06-11 19:27:51.76752+00 f       3       Bertrand        \N      4fd1c3ae-7ba2-4e01-894c-da778a9d54d8    2026-06-11 19:27:51.77301+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
0fe927e4-df31-4dfb-9494-b6d988b1727d    2026-06-11 19:28:46.747046+00   2026-06-11 19:28:46.747057+00        f       3       Ruth    \N      3b1d30ae-4840-4a74-9a61-7510250b4879    2026-06-11 19:28:46.751391+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
5e985c28-0c3a-40f9-b8b1-64d8fa006eb8    2026-06-11 19:29:52.917052+00   2026-06-11 19:29:52.917061+00        f       3       Irene   \N      cc3a16e2-829c-4c4c-9ef8-8d46a5d0b069    2026-06-11 19:29:52.921461+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
cbbdf2e9-19ce-434b-81a8-dc1bb4f687f5    2026-06-11 19:41:58.064252+00   2026-06-11 19:41:58.064272+00        f       3       \N      \N      81cf5d35-0592-43ac-94cf-8875a1c1c8a1    2026-06-11 19:41:58.068861+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d29e8fe8-d013-49f5-8b95-755002ad4ec7    2026-06-11 19:44:14.04968+00    2026-06-11 19:44:14.049693+00        f       3       André   \N      2e533c23-b1d5-408b-808d-6a5c1070aafc    2026-06-11 19:44:14.054724+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
0e5742bb-b5e7-4ded-b93c-27011f805af3    2026-06-11 19:44:43.776443+00   2026-06-11 19:44:43.776452+00        f       3       Patrick \N      5065f563-85ed-4f16-adb7-801df1ed180a    2026-06-11 19:44:43.780726+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
4ca0b2a8-0a7b-42c7-b3cb-55602d381a64    2026-06-11 19:51:00.614601+00   2026-06-11 19:51:00.614612+00        f       3       Norbert \N      ad29bc3d-a2a5-43ab-9819-e29cb730c496    2026-06-11 19:51:00.619493+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
38b998b9-9d24-4965-9730-dca5ad2a6994    2026-06-11 20:05:19.692387+00   2026-06-11 20:05:19.692397+00        f       6       Audray  \N      7266ee5a-2d3a-4329-bebf-c3d486750ef0    2026-06-11 20:05:19.696836+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
32cb7a15-be6d-4ff9-819c-dbfd0949d2e2    2026-06-11 20:32:48.873878+00   2026-06-11 20:32:48.873888+00        f       3       Udain   \N      53e0a201-c91a-4b8f-9c6c-6dc852f28385    2026-06-11 20:32:48.87826+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
a283909e-f308-443b-996c-642e2458ee1a    2026-06-11 20:36:10.553136+00   2026-06-11 20:36:10.553147+00        f       3       Kevin   \N      3386c957-5353-4c37-985e-9408eab7bd02    2026-06-11 20:36:10.55771+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
908b9999-2720-449f-9ccb-c43247b1850c    2026-06-11 20:37:32.483054+00   2026-06-11 20:37:32.483065+00        f       3       Elodie  \N      de630894-1f6c-42b7-b173-4c52fbd21744    2026-06-11 20:37:32.48723+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
cd04264b-e121-4059-b67b-faa2085d323e    2026-06-11 20:41:53.512004+00   2026-06-11 20:41:53.512014+00        f       3       \N      \N      438d84d4-e88f-423a-981c-ea839d22b773    2026-06-11 20:41:53.516232+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    7204f98c-c025-462b-9868-44570d752d95 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8abdfff8-0274-4817-90ba-752796ec383b    2026-06-11 21:34:30.643819+00   2026-06-11 21:34:30.64383+00 f       3       Gildas  \N      bce0828f-fecb-4d0b-9436-7cc4c40cf240    2026-06-11 21:34:30.648242+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
465d341e-e18c-490f-a977-52df3796c69a    2026-06-16 17:47:15.566975+00   2026-06-16 17:47:15.566986+00        f       2       Blanchard       \N      8595ad3e-0cf0-4b85-90e6-66e2c007c83a2026-06-16 17:47:15.572359+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
6cd6d316-4cff-4ac2-8a4c-a70a03c239a0    2026-06-16 17:47:46.300433+00   2026-06-16 17:47:46.300444+00        f       2       Eric    \N      5e9f73c7-3418-45f4-b886-58333ebd95c9    2026-06-16 17:47:46.3055+00  \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
c4e5df3c-f8f3-49f7-963c-fcecfd4da362    2026-06-16 17:53:48.106202+00   2026-06-16 17:53:48.106213+00        f       2       Jean    \N      478d38d0-cec9-47ca-891f-5ae20d34fbfa    2026-06-16 17:53:48.111989+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8a969b7b-d510-4780-9167-ae8aaff8b106    2026-06-16 18:16:51.582317+00   2026-06-16 18:16:51.582326+00        f       6       Pierre  \N      6d6bd1b7-ecbc-4db1-8d69-9121d9f55b97    2026-06-16 18:16:51.587754+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
03b819a9-6bf6-4ce9-96b7-7a29eea8f1df    2026-06-16 18:27:52.172384+00   2026-06-16 18:27:52.172394+00        f       3       Gwen    \N      1e919650-76f0-4e26-84d2-6250931f2942    2026-06-16 18:27:52.177758+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
1f97f137-f9e1-4e33-8a27-8a962e551eb6    2026-06-16 18:31:17.313044+00   2026-06-16 18:31:17.313056+00        f       6       Ivane   \N      a894ac90-d196-4fea-9cdb-af4d0f962a07    2026-06-16 18:31:17.318346+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
79f0766a-b5c6-4e58-a2a1-9d6c652c757a    2026-06-16 18:33:35.135017+00   2026-06-16 18:33:35.135027+00        f       3       Bryan   \N      926cc0c8-1a14-4c29-8e00-57071f870b59    2026-06-16 18:33:35.140225+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
8d0bc445-a3b3-42e8-8065-a9f60d6f1c53    2026-06-16 18:36:16.196553+00   2026-06-16 18:36:16.196562+00        f       2       Patrick \N      912930bf-d7bd-4b53-9a56-2129c6aa6328    2026-06-16 18:36:16.202149+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3fa43a32-c969-4eec-88f3-64cbc1a60817    2026-06-16 18:38:00.410565+00   2026-06-16 18:38:00.410576+00        f       3       Benjamin        \N      79f40df3-24da-4f57-957c-8ee704c6ddf62026-06-16 18:38:00.41563+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
b4691aa6-07e8-4c48-a70a-cdcf858a4af5    2026-06-16 18:39:30.4161+00     2026-06-16 18:39:30.416111+00        f       2       \N      \N      40326431-4add-4592-b2f5-392b0a0b8bbd    2026-06-16 18:39:30.421148+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3c2bbcb4-02f9-42b2-9ee7-60945302211b    2026-06-16 18:39:41.0126+00     2026-06-16 18:39:41.012611+00        f       2       \N      \N      12119086-611c-4b79-be68-ad6e889f3850    2026-06-16 18:39:41.017594+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f0ab7dff-9feb-484f-b528-2d8b5b985fd6    2026-06-16 18:43:44.592437+00   2026-06-16 18:43:44.592447+00        f       3       Anicet  \N      2a03a233-5b6c-4b15-88b1-d3359f4c6282    2026-06-16 18:43:44.59756+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
512110ff-7172-4924-9e29-c90308cfb608    2026-06-16 18:43:57.787553+00   2026-06-16 18:43:57.787563+00        f       3       Ali     \N      b3a8eaef-3ac2-4b61-8350-6a034e87c4b9    2026-06-16 18:43:57.792593+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
ea6333bb-6803-44b0-8153-35c73c8abe08    2026-06-16 18:46:10.29147+00    2026-06-16 18:46:10.291481+00        f       6       Johny   \N      0ed169ce-2b71-4dc0-81eb-6a44d60dcc6a    2026-06-16 18:46:10.296652+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
793d9dff-ce3c-49ea-95ae-0bae2c4e6332    2026-06-16 18:46:14.890838+00   2026-06-16 18:46:14.890849+00        f       2       Ange    \N      82a8f660-54f1-4db2-940c-8379d6dfe99e    2026-06-16 18:46:14.896147+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
ca15c200-3cc3-4427-9e7f-e6b3921b7c31    2026-06-16 18:47:20.013105+00   2026-06-16 18:47:20.013116+00        f       3       Murphy  \N      6dbf03fb-4d04-496b-9c75-9cb51519f53c    2026-06-16 18:47:20.019979+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
19977fff-21d5-4c06-be1c-17271b83d76f    2026-06-16 18:51:32.457045+00   2026-06-16 18:51:32.457058+00        f       6       Leslie  \N      a952a87d-c2c9-4076-a11c-69cd728e5b9b    2026-06-16 18:51:32.462362+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
14261a70-339f-470c-99c9-1a8b7a02661d    2026-06-16 18:53:27.837326+00   2026-06-16 18:53:27.837336+00        f       3       Henry   \N      10658284-4653-49f9-a8a8-a74eb0fead0d    2026-06-16 18:53:27.842379+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
f9b85a1f-6ebc-4047-b5cd-92ad9c1fe3ed    2026-06-16 18:54:54.474149+00   2026-06-16 18:54:54.474158+00        f       3       Rodric  \N      baa09dd4-74ed-486f-a793-7918582b1bf1    2026-06-16 18:54:54.479478+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
211465f3-05ca-434a-992f-e4f1f5e830e7    2026-06-16 18:55:26.29876+00    2026-06-16 18:55:26.29877+00 f       2       \N      \N      fcaca105-917e-4390-83c8-80c3352c9d8b    2026-06-16 18:55:26.30418+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5faacc3f-4f81-4d03-b731-c2dcf907fc098f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
074396c1-5835-4a85-ae81-f5d68c1737d1    2026-06-16 19:01:30.441645+00   2026-06-16 19:01:30.441655+00        f       6       Fredy   \N      de497736-ee92-406a-b9e6-4f2a51e776d1    2026-06-16 19:01:30.447833+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
5daeaf9a-aa9a-45e3-b435-e6e2b3b97601    2026-06-16 19:04:55.85805+00    2026-06-16 19:04:55.858061+00        f       6       Fredy   \N      52535565-380c-40c3-91a8-15dd7efb590b    2026-06-16 19:04:55.863597+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
103d5302-11a3-4757-8f0b-9c3c4447aa28    2026-06-16 19:13:27.469961+00   2026-06-16 19:13:27.469972+00        f       2       Amour   \N      4fe11875-a316-4675-949e-04e446a71842    2026-06-16 19:13:27.475225+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
68147ca7-2a5f-4704-aba6-4f095cbf8e1d    2026-06-16 19:22:54.729447+00   2026-06-16 19:22:54.729458+00        f       6       Smaelle \N      ec15a833-88b1-4338-b8f6-91a64e7fc6f0    2026-06-16 19:22:54.734823+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
8ada60ff-5753-4af7-8680-398e6160929b    2026-06-16 19:27:50.740188+00   2026-06-16 19:27:50.740201+00        f       3       Christ  \N      da5545e0-de5c-4c0c-b372-478efc401e6a    2026-06-16 19:27:50.745256+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
21b69eee-df4d-45ea-bc0a-13d939be6827    2026-06-16 19:31:21.573493+00   2026-06-16 19:31:21.573504+00        f       2       \N      \N      25f7e40d-a594-4507-81cb-06bd58fec6e8    2026-06-16 19:31:21.578593+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
2dcc3418-7ccd-42b6-9b93-e1e01434b3d4    2026-06-16 19:33:44.991381+00   2026-06-16 19:33:44.991391+00        f       6       Maria   \N      59e888c3-25b8-4a96-b179-9312b6fd3b25    2026-06-16 19:33:44.99649+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
57863835-8607-4f0a-ba30-9f3ac3938eaf    2026-06-16 19:36:03.008095+00   2026-06-16 19:36:03.008104+00        f       2       Scott   \N      6512c3b7-beb0-4be0-b20e-c5df8970a32c    2026-06-16 19:36:03.013393+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f4995586-735d-48fa-b61d-d605d305eafb    2026-06-16 19:37:19.63068+00    2026-06-16 19:37:19.630692+00        f       3       Edgard  \N      c6080e0a-f8d8-4ee6-bd76-71d5eecaeb18    2026-06-16 19:37:19.635817+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
e514cc1d-398f-4aef-bf09-3f13f9196358    2026-06-16 20:00:17.702993+00   2026-06-16 20:00:17.703004+00        f       3       Christ  \N      54557687-b30f-4812-89f3-f1d1c8c2d412    2026-06-16 20:00:17.713454+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
c1e97023-f619-43e4-9485-737845c602b2    2026-06-16 20:01:14.113012+00   2026-06-16 20:01:14.113021+00        f       6       Smaelle \N      486bf156-b70a-48f7-8f96-1cfdd90767b1    2026-06-16 20:01:14.118214+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
8f9f1260-4a5b-4c21-b470-606a905c6fbb    2026-06-16 20:04:39.88205+00    2026-06-16 20:04:39.88206+00 f       3       Willy   \N      62345086-81e0-432c-918e-4c0940c586a7    2026-06-16 20:04:39.887195+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
d77ba4df-66d3-4c64-8e0e-a36909a1e439    2026-06-16 20:12:09.633742+00   2026-06-16 20:12:09.633753+00        f       3       Mz      \N      45b36ec7-74b2-4808-a4d1-f354ba513b0d    2026-06-16 20:12:09.639159+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
0642f567-bfd0-4c8c-b2fe-1bf623a643fb    2026-06-16 20:12:28.940225+00   2026-06-16 20:12:28.940235+00        f       2       \N      \N      78bf0f6e-862e-4fe6-b9e6-195edc0cd077    2026-06-16 20:12:28.945537+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
dd3c3fe5-206c-44cc-b379-6fb73eaa1077    2026-06-16 20:12:30.878209+00   2026-06-16 20:12:30.878221+00        f       3       Marie   \N      349c1578-634f-42fe-8118-2b0a072b6249    2026-06-16 20:12:30.883394+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
ccaea9d2-d125-490d-bfa9-7ffb21e2799e    2026-06-16 20:19:03.803263+00   2026-06-16 20:19:03.803271+00        f       2       Alexandre       \N      17bb3150-addd-4228-b15c-fa0bdda8a4b82026-06-16 20:19:03.808564+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
9064d9c7-684b-44c9-9ea8-eeed7a236665    2026-06-16 20:24:55.531194+00   2026-06-16 20:24:55.531206+00        f       6       Dg      \N      37ac1aba-57ef-41bb-929e-0c6d827d7052    2026-06-16 20:24:55.536423+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5480ce9b-5b25-46d3-a729-04e09996c208 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f06eb5a5-0bf8-4a09-88fd-606180468e79    2026-06-16 20:25:09.348792+00   2026-06-16 20:25:09.348803+00        f       3       Randy   \N      490d464f-29d7-4052-ba43-094211a4e084    2026-06-16 20:25:09.354129+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    7204f98c-c025-462b-9868-44570d752d95 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c2bd2756-a76f-48a8-96c2-55d979083ce4    2026-06-16 20:28:42.800091+00   2026-06-16 20:28:42.800102+00        f       6       Lucapi  \N      2fcb4e29-6db9-41ac-9703-49d0f8b84a24    2026-06-16 20:28:42.805113+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
f44af39a-015d-44b9-9eb5-84d50ca4008f    2026-06-16 20:28:46.48874+00    2026-06-16 20:28:46.48875+00 f       6       Junior  \N      66a1b7ab-7a38-4dec-98d7-80d141c14a6b    2026-06-16 20:28:46.494121+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
a91c9295-7ad0-46fb-b649-492bb5893dcd    2026-06-16 20:31:49.400288+00   2026-06-16 20:31:49.400299+00        f       6       Lucapy  \N      7ce2a4b8-5f4f-4a0e-bca9-90df466b76f4    2026-06-16 20:31:49.405601+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
51075d1b-78e7-46ee-9a29-9f6ff2ea1c44    2026-06-16 21:22:43.207493+00   2026-06-16 21:22:43.207504+00        f       2       Luc     \N      be392c60-d8f0-4e93-9492-1f3b09b34893    2026-06-16 21:22:43.212893+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
48d85bce-97d1-4859-a268-e2e40d5debcd    2026-06-16 22:07:41.796123+00   2026-06-16 22:07:41.796137+00        f       3       Kévin   \N      2cdc625d-f4ec-48ef-a66e-e21e8063d097    2026-06-16 22:07:41.80621+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
37239ea2-1ad9-4b0e-b06d-85165d54f5e7    2026-06-16 22:08:13.154479+00   2026-06-16 22:08:13.15449+00 f       3       Océane  \N      ddfc1aff-372b-4916-a59b-dfd14cc56834    2026-06-16 22:08:13.160033+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
1c53560b-f0a9-446d-b1f2-b698b4775e84    2026-06-16 22:09:22.443165+00   2026-06-16 22:09:22.443176+00        f       3       Bienvenue       \N      2438d2bc-7edc-44d7-beea-4287005605612026-06-16 22:09:22.448563+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
2a37e61e-1638-48c7-9c4a-c4235a7c011e    2026-06-17 16:26:20.454119+00   2026-06-17 16:26:20.454129+00        f       3       Bryan   \N      d8419335-706d-471b-ade8-43653062a58f    2026-06-17 16:26:20.459284+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
296aae5f-0f28-49c8-8bc6-39486e661860    2026-06-17 16:52:32.019441+00   2026-06-17 16:52:32.019451+00        f       3       Jean    \N      032e120e-b35a-4798-bca3-3e287622ddc4    2026-06-17 16:52:32.024589+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
85424972-bb41-436a-acf3-c816857b9ae3    2026-06-17 16:55:27.697337+00   2026-06-17 16:55:27.697346+00        f       3       Jack    \N      5145acbb-2bc6-458b-9c93-fb90eef22ebc    2026-06-17 16:55:27.702471+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
8bee9696-964c-45d2-9e81-5f0646bf3dd6    2026-06-17 16:58:25.681236+00   2026-06-17 16:58:25.681246+00        f       3       Jacques \N      17dcaedb-6dc6-46ff-9bf5-a6b2c67a81f1    2026-06-17 16:58:25.686487+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
df46f924-36fb-4200-b498-28d34b230a44    2026-06-17 17:12:50.188622+00   2026-06-17 17:12:50.188635+00        f       3       David   \N      fac823fa-8a02-4db6-9b1c-590c33a5683f    2026-06-17 17:12:50.196901+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
f20edfb7-7980-41b7-ac8c-5e341cab0f35    2026-06-17 18:21:20.015837+00   2026-06-17 18:21:20.015847+00        f       6       Test    \N      0950f78b-3a3a-4921-949e-fb9002a95768    2026-06-17 18:21:20.021012+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
22d0473e-c420-41c9-9cc4-b3113ac0849b    2026-06-17 18:28:07.943584+00   2026-06-17 18:28:07.943595+00        f       2       Henry   \N      437e384b-7911-43b8-b7c1-4ccadda65531    2026-06-17 18:28:07.949044+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7443467f-21fe-4219-a76d-d51089c17245    2026-06-17 18:43:48.814464+00   2026-06-17 18:43:48.814475+00        f       3       Rikiel  \N      965add68-cd00-4433-addb-eab20174a173    2026-06-17 18:43:48.819749+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
03e05773-e89f-4c6c-b2ea-7e0bd2b56b39    2026-06-17 18:46:01.267442+00   2026-06-17 18:46:01.267453+00        f       6       FLEUR   \N      a58777b9-911e-463c-9ac6-cc5e7436855f    2026-06-17 18:46:01.272861+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
e56f5b1f-0b1e-45eb-b7dc-055e54fcbdd7    2026-06-17 18:48:48.799223+00   2026-06-17 18:48:48.799233+00        f       2       Bertrand        \N      9f04284e-fb9a-4d38-b409-83af76bce1022026-06-17 18:48:48.804191+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
8a00bb13-d40d-498c-afbd-67aee188f004    2026-06-17 18:56:45.657701+00   2026-06-17 18:56:45.657711+00        f       2       601     \N      2430e05c-7c2f-4bcd-97e1-2bb1f2c8ba1b    2026-06-17 18:56:45.663291+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f4e3fd00-b07a-4b95-b64e-eecf83d2a06a    2026-06-17 19:08:22.560311+00   2026-06-17 19:08:22.560322+00        f       2       Rame    \N      d9fda7f5-a788-40b7-a691-c08c87228c33    2026-06-17 19:08:22.565416+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7c0fdf02-9f92-40e5-a2a8-0c26683d57c1    2026-06-17 19:44:24.397027+00   2026-06-17 19:44:24.397038+00        f       6       Smaëlle \N      90a0b8a2-48c5-4d01-ac66-d2775f9839a4    2026-06-17 19:44:24.401243+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
83a7bd60-7d30-43e5-ae03-fefeaa70c55f    2026-06-17 19:50:41.306237+00   2026-06-17 19:50:41.306247+00        f       6       EKOMI EKOMI     \N      b37f850d-62d8-4198-9481-365a64d3a47e2026-06-17 19:50:41.310414+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
d6d1d5b4-0f9c-48ed-aa6e-116f5ea366a2    2026-06-17 19:51:44.556716+00   2026-06-17 19:51:44.556726+00        f       3       Nino    \N      470b810f-ab85-42be-a971-9d684759f752    2026-06-17 19:51:44.561181+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
95203c2e-83e7-4c0f-a3ed-2fafeff0ea7d    2026-06-17 19:53:10.887519+00   2026-06-17 19:53:10.887529+00        f       6       Smaëlle \N      de34c078-30ff-4032-814e-c7cbde5e09b0    2026-06-17 19:53:10.892433+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
cfbce1ac-f1d9-4deb-8d65-c77fd8a732a8    2026-06-17 19:55:05.854269+00   2026-06-17 19:55:05.854279+00        f       6       EKOMI EKOMI     \N      ffa74c86-4aad-43db-a630-3c5e88a09fd62026-06-17 19:55:05.858092+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
e6bbb938-8669-42f4-adca-ce576b7f4d30    2026-06-17 19:56:32.47513+00    2026-06-17 19:56:32.475138+00        f       3       Cavid   \N      d416b425-1b37-4efe-b4bb-3d8e8748aaf7    2026-06-17 19:56:32.482636+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
28b6f5ca-e24f-4046-b478-b7a559a38627    2026-06-17 20:08:46.161041+00   2026-06-17 20:08:46.161051+00        f       6       EKOMI EKOMI     \N      733d9bb7-eca3-4a64-874b-86aa3aa44dd62026-06-17 20:08:46.165292+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
66c0008b-efd7-4ffa-8e13-393369a4675a    2026-06-17 20:13:50.349165+00   2026-06-17 20:13:50.349173+00        f       6       Vincent \N      b6dfa32e-b2fe-4c86-851c-067992383d9e    2026-06-17 20:13:50.353359+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
6e899e15-55b7-4804-ab8c-8c606b70543d    2026-06-17 20:20:10.561054+00   2026-06-17 20:20:10.561064+00        f       2       Hugor   \N      71741119-7271-4641-ba4d-7cdae93334c4    2026-06-17 20:20:10.565023+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
4f3dd8be-172d-41b2-86b3-9b4485062754    2026-06-17 20:40:51.246627+00   2026-06-17 20:40:51.246637+00        f       3       Aricle  \N      08421231-bf47-49b0-b5e3-7d0e4a2990d2    2026-06-17 20:40:51.250978+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
e8ddaebd-4c98-480c-9b66-bdb24c951bba    2026-06-17 20:45:14.847955+00   2026-06-17 20:45:14.847966+00        f       6       EKOMI EKOMI     \N      22d52261-df92-4275-9889-24fd20c717af2026-06-17 20:45:14.852465+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
a5edb134-b7da-4b16-a864-ba0a45aee958    2026-06-17 20:49:26.490579+00   2026-06-17 20:49:26.49059+00 f       6       Ekomi   \N      79fce757-ef12-43ec-8046-d5f2e9ce8654    2026-06-17 20:49:26.498235+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
fa5bf9b8-67b4-49c1-ad5e-661654bb097d    2026-06-17 20:52:49.654396+00   2026-06-17 20:52:49.654405+00        f       6       Smaeelle        \N      6630ee29-b53c-4ece-abee-52a0aed5cabc2026-06-17 20:52:49.65857+00     \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
d1deb70f-cd1f-491c-9a2c-b91677c46b2d    2026-06-17 21:04:44.616572+00   2026-06-17 21:04:44.616583+00        f       3       Tresor  \N      e2a206ec-8c96-4f0f-b164-23311249be60    2026-06-17 21:04:44.620667+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
84186b67-be47-4c1e-89ea-c9338b9f9204    2026-06-17 21:05:19.079477+00   2026-06-17 21:05:19.079487+00        f       3       Elysee  \N      9160bd5a-f6ac-4041-87ef-66161dbbf8a6    2026-06-17 21:05:19.08355+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
3d2926c7-9224-43f9-8093-7ba11c9cf7d6    2026-06-17 21:07:22.480116+00   2026-06-17 21:07:22.480127+00        f       6       Smaelle \N      b9a76e29-ad04-4f3d-a121-16c6410591a0    2026-06-17 21:07:22.483996+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
3cbb6390-be63-4838-badc-982052259306    2026-06-17 21:07:43.338323+00   2026-06-17 21:07:43.338334+00        f       2       Jull    \N      e05a6ed3-6a11-4496-83c9-1e1023f49b84    2026-06-17 21:07:43.342199+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
45937a68-a75f-4e8b-8e8b-82197b513a2c    2026-06-17 21:10:52.62401+00    2026-06-17 21:10:52.624021+00        f       6       Owee    \N      bcc4a89d-c705-496f-9e0f-2f1ad25aa6db    2026-06-17 21:10:52.62799+00 \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
6f480e2c-305b-46b1-9ed0-2037ea2fd901    2026-06-17 21:12:13.655071+00   2026-06-17 21:12:13.655081+00        f       6       Osee    \N      cf5a0141-92c5-4ed2-be54-bf3867795992    2026-06-17 21:12:13.658959+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    77e0d595-d6da-4158-8f75-2e4f9947e156 77e0d595-d6da-4158-8f75-2e4f9947e156    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
19217276-5c84-4ad1-84a2-aaa8609ff5a4    2026-06-17 21:14:41.653863+00   2026-06-17 21:14:41.653874+00        f       6       Melvy’ne        \N      45aed2f5-9af5-4bd7-99d0-19c3bf4458622026-06-17 21:14:41.658249+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
5cd477cb-924c-45f6-8492-8ceda5ffa28c    2026-06-17 22:19:09.934825+00   2026-06-17 22:19:09.934834+00        f       6       \N      18_25   f4ab9aef-89d8-46ba-9c99-7fb631a45cce    2026-06-17 22:19:09.938905+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5480ce9b-5b25-46d3-a729-04e09996c208 31ab0910-ff6c-4f50-abd1-6054890c27b2
7f320b00-7e73-4930-a8e7-77fb8d9536ea    2026-06-18 08:29:30.374519+00   2026-06-18 08:29:30.374527+00        f       5       \N      \N      f47ba0a4-815f-4de6-8f1d-d0b54dc32dfb    2026-06-18 08:29:30.378597+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
2a5a47bf-da5a-4067-9a91-a4b39fd58321    2026-06-18 09:29:01.179689+00   2026-06-18 09:29:01.1797+00  f       3       Edmond  \N      3c2eb153-d839-4bcc-ac57-86cdcd9363bb    2026-06-18 09:29:01.185787+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9965cbe1-3a28-4c15-97c7-08bb532dbb8c    7204f98c-c025-462b-9868-44570d752d95 31ab0910-ff6c-4f50-abd1-6054890c27b2
ecaf842b-6df2-451f-bdd2-659e4770382d    2026-06-18 11:13:25.003983+00   2026-06-18 11:13:25.003995+00        f       5       SERGE   \N      9032ace4-d312-4def-af88-d5a1e96efa1b    2026-06-18 11:13:25.008098+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
73a11459-149e-4728-8104-4084adff6916    2026-06-18 11:25:31.255884+00   2026-06-18 11:25:31.255898+00        f       3       ef      \N      5ad94dda-b8ea-47cc-840e-8178457d6381    2026-06-18 11:25:31.263746+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    74852258-0da9-48c7-aa02-9e03c703a2ee 98e0c8c7-248c-480d-a84b-04a8e4b8aade
9d7a1fe6-b820-48b6-b0d7-ab21dff1c4a8    2026-06-18 11:26:08.818301+00   2026-06-18 11:26:08.818311+00        f       3       \N      26_35   c07d9d06-2400-4c0a-8532-dc43e25a307e    2026-06-18 11:26:08.822358+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    74852258-0da9-48c7-aa02-9e03c703a2ee 98e0c8c7-248c-480d-a84b-04a8e4b8aade
88fe64c3-11d5-4520-b6ad-7ee3e0043b01    2026-06-18 11:30:07.608917+00   2026-06-18 11:30:07.608926+00        f       5       ZAZIE   \N      4a9c42ee-dc5a-44a0-90b0-71e0eaab0a0c    2026-06-18 11:30:07.614878+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
0e38cf06-f895-4a34-90ff-1d5e82746186    2026-06-18 11:31:06.828511+00   2026-06-18 11:31:06.828522+00        f       5       ELODIE  \N      56ed0139-cab7-4815-a338-5e08ac60cea5    2026-06-18 11:31:06.836163+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
0db1ce52-f206-4735-a74d-acfd0ed19fad    2026-06-18 11:31:59.216278+00   2026-06-18 11:31:59.216288+00        f       3       EVODIE  \N      f0a59f19-b290-4048-b168-12e56144c556    2026-06-18 11:31:59.220202+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    74852258-0da9-48c7-aa02-9e03c703a2ee 98e0c8c7-248c-480d-a84b-04a8e4b8aade
364ea102-00bd-479f-af3a-923416bc095a    2026-06-18 11:32:29.247006+00   2026-06-18 11:32:29.247016+00        f       5       ERREUR  \N      39b4a1fc-7084-4d2c-816e-8129881b5834    2026-06-18 11:32:29.250853+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
a6e09006-f79e-4579-83a9-27a111c326a9    2026-06-18 13:22:58.094801+00   2026-06-18 13:22:58.094811+00        f       5       ANGIE   \N      a09fc028-85c0-4922-8cd0-e6a62e8127a6    2026-06-18 13:22:58.10444+00 \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
0a680609-a52e-47a9-91f4-f6fd38ba4256    2026-06-18 14:55:36.04175+00    2026-06-18 14:55:36.041763+00        f       5       ANGIE   \N      fd572eab-4806-40c1-8641-f57bf4618233    2026-06-18 14:55:36.048058+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
708ab086-733c-489a-902c-b82a8d6537ed    2026-06-18 15:04:53.680553+00   2026-06-18 15:04:53.680564+00        f       5       Bissa   \N      bd685953-0d7e-4420-aebb-045917a9cb47    2026-06-18 15:04:53.681747+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
5cf17f2c-f800-42ed-9c3d-bdfa08b9addd    2026-06-18 15:07:17.332314+00   2026-06-18 15:07:17.332323+00        f       5       YVAN    \N      419d7a5a-a350-405a-813f-40bc3d711abd    2026-06-18 15:07:17.333044+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
9627eba0-64e9-4a85-af9b-618637df4bd2    2026-06-18 15:22:51.956253+00   2026-06-18 15:22:51.956263+00        f       5       SERGINE \N      046701af-c7c9-4fb7-bfe8-446ab2e403af    2026-06-18 15:22:51.957112+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
71e2e716-c2fb-473d-a07d-7a2242139687    2026-06-18 15:27:30.140643+00   2026-06-18 15:27:30.140653+00        f       5       PEPITE  \N      479a8d97-dd7e-48ff-bad5-8cdb5dd86a8d    2026-06-18 15:27:30.143898+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
64f15a53-58fc-46c6-af08-0467359d87f7    2026-06-18 15:28:13.549833+00   2026-06-18 15:28:13.549841+00        f       5       AURELIEN        \N      aeddc689-30ac-4ab9-b45d-1f7fe9d4bab72026-06-18 15:28:13.550497+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
056a8c03-07ed-4c65-a4ba-fe9e00d9e8d9    2026-06-18 15:42:54.829544+00   2026-06-18 15:42:54.829555+00        f       5       SABRINA \N      ba044a3f-e812-476b-beeb-d3f442b75412    2026-06-18 15:42:54.831012+00        \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
9aa55d97-f2de-4d9c-a5c0-bc67db416da2    2026-06-18 16:20:18.286481+00   2026-06-18 16:20:18.286491+00        f       5       \N      18_25   88bec376-a3ff-41d0-827a-92a081169283    2026-06-18 16:20:18.28757+00 \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    3c363b65-b203-4b67-9601-fe19caad9c52 98e0c8c7-248c-480d-a84b-04a8e4b8aade
bf04302d-233c-4b70-b776-64d315f685be    2026-06-18 17:11:45.483427+00   2026-06-18 17:11:45.483437+00        f       2       JESSE   \N      e235c787-9b96-40e5-bd3f-b728703d4ad4    2026-06-18 17:11:45.484327+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5faacc3f-4f81-4d03-b731-c2dcf907fc09 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
3331d94a-6f23-4d51-b207-f1325a68c82f    2026-06-18 22:33:55.285764+00   2026-06-18 22:33:55.285773+00        f       6       Elisée  \N      3b9c1725-fa27-4bbf-8777-b9d4061d892a    2026-06-18 22:33:55.286674+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5480ce9b-5b25-46d3-a729-04e09996c208 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_historicalgoodie; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalgoodie (id, created_at, updated_at, is_deleted, nom, description, history_id, history_date, history_change_reason, history_type, entreprise_id, history_user_id, campagne_id, produit_associe_id, quantite_produit_associe) FROM stdin;
96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    2026-06-11 17:26:04.177914+00   2026-06-11 17:26:04.177923+00        f       Casquettes      \N      3df7e10e-925a-46c2-81f2-18236ec69f17    2026-06-11 17:26:04.180269+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
a048da9b-fb75-43ae-a6d7-eaa931fec707    2026-06-11 17:26:22.951229+00   2026-06-11 17:26:22.95124+00 f       Clé USB \N      8c97256b-67b0-4c49-9d63-991c1352acb5    2026-06-11 17:26:22.953356+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
0e24738c-8b11-4067-9dad-26da764874e5    2026-06-11 17:27:08.749541+00   2026-06-11 17:27:08.749549+00        f       Décapsuleur     \N      2872e78b-59d3-4ffb-acd2-41576639a65d    2026-06-11 17:27:08.751992+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
589fd6ed-d9ae-4074-a6d6-980089926534    2026-06-11 17:27:33.153997+00   2026-06-11 17:27:33.154007+00        f       Maillots de sport       \N      0aeb7849-f406-426b-9c7a-15a145d23e0d2026-06-11 17:27:33.155749+00    \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    2026-06-11 17:27:58.794633+00   2026-06-11 17:27:58.794643+00        f       K-ways  \N      43e23d8e-40d2-48f4-b0de-0ab6ae755a77    2026-06-11 17:27:58.796803+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    2026-06-11 17:27:58.794633+00   2026-06-17 14:07:27.295832+00        f       CAWET   \N      7ba55664-e65e-440d-8e37-b7967cebac4f    2026-06-17 14:07:27.300725+00        \N      ~       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
274c3e55-aef1-41ab-b641-a24560eae583    2026-06-17 15:53:48.979886+00   2026-06-17 15:53:48.979897+00        f       Sac de Sport    \N      28a7fb22-0dd6-4083-a8e3-771bfe518d95    2026-06-17 15:53:48.98493+00 \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
a048da9b-fb75-43ae-a6d7-eaa931fec707    2026-06-11 17:26:22.951229+00   2026-06-17 18:07:19.532751+00        f       Clé USB \N      fd1658b8-35aa-4672-861b-58cd2f77def0    2026-06-17 18:07:19.549566+00        \N      ~       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
acb45014-62c2-48be-80c8-234d3a416d35    2026-06-17 18:07:44.817805+00   2026-06-17 18:07:44.817815+00        f       Echarpes        \N      dab13968-1aa1-4bac-b1c5-25b5435000d3    2026-06-17 18:07:44.823269+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    2026-06-11 17:26:04.177914+00   2026-06-17 18:08:05.780925+00        f       Casquettes      \N      a50deaff-c2f9-4fa5-a412-f6fd0a50ddd9    2026-06-17 18:08:05.785825+00        \N      ~       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    2026-06-17 18:08:25.051402+00   2026-06-17 18:08:25.051413+00        f       Carnet  \N      ff1f0610-cb24-4ecd-a514-b3f4b43df45a    2026-06-17 18:08:25.055664+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    2026-06-17 18:08:55.710832+00   2026-06-17 18:08:55.710843+00        f       Ballon  \N      8523ed07-9f39-40a1-b351-71c524f04746    2026-06-17 18:08:55.714856+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
0e24738c-8b11-4067-9dad-26da764874e5    2026-06-11 17:27:08.749541+00   2026-06-17 18:09:18.315808+00        f       Décapsuleur     \N      609d4c76-2a6d-4443-b9e2-0d2d3cfeb84a    2026-06-17 18:09:18.320197+00        \N      ~       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    2026-06-11 17:27:58.794633+00   2026-06-17 18:09:43.363462+00        f       CAWET   \N      257e49f4-e15c-4435-9c94-66453fe5d5ca    2026-06-17 18:09:43.370269+00        \N      ~       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
fa34a957-0c59-4526-a3af-db5d436a3e87    2026-06-17 18:10:16.471068+00   2026-06-17 18:10:16.47108+00 f       Casque audio    \N      8db44398-1b38-449e-9c01-87d46f1af0de    2026-06-17 18:10:16.475924+00        \N      +       22898852-840c-4c01-9d7b-89a68ff5cce4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d36107b8-f8fd-4250-a37b-2920a2e92199    \N      1
660508ff-d3ad-4c1c-a9ce-0cd565d2fbed    2026-06-17 22:30:45.022391+00   2026-06-17 22:30:45.022402+00        f       TEST    \N      2bdbfb5e-ff62-42b6-abc3-5939caab6ee1    2026-06-17 22:30:45.026379+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1529df21-8811-4562-b88c-ac3652cf9010    \N      1
f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    2026-06-17 22:38:41.523108+00   2026-06-17 22:38:41.523119+00        f       test ceverine   \N      df2cd3cd-dbaa-4bf7-88e2-1a435884aab1    2026-06-17 22:38:41.527617+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 885cf097-4539-44fb-9231-c023f5b0eb9d    \N      1
9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    2026-06-18 08:27:25.50869+00    2026-06-18 08:27:25.508703+00        f       T-shirt \N      c12c80fa-bd89-45ae-92d3-d3d4ea08aaa3    2026-06-18 08:27:25.511972+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    \N      1
4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    2026-06-18 08:27:38.888513+00   2026-06-18 08:27:38.888523+00        f       Casquettes      \N      2b54c25c-ed6c-4342-89d7-29bbd042c6d0    2026-06-18 08:27:38.897353+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    \N      1
1206e226-e1c8-418e-bc4e-557a470e5328    2026-06-18 08:27:59.375145+00   2026-06-18 08:27:59.375156+00        f       TOMATES \N      915153ed-8b53-4808-b4a5-ba0895255822    2026-06-18 08:27:59.378695+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    \N      1
79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    2026-06-18 08:28:24.634214+00   2026-06-18 08:28:24.634223+00        f       Orange  \N      5d000b63-a8a3-46a6-8eb7-01518d37c724    2026-06-18 08:28:24.641262+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    \N      1
d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    2026-06-18 08:28:42.761114+00   2026-06-18 08:28:42.761125+00        f       Fer à Repasser  \N      b178b841-711f-492a-9356-f6dc74dc936a    2026-06-18 08:28:42.765051+00        \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    \N      1
\.


--
-- Data for Name: btl_historicalobjectifsite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalobjectifsite (id, created_at, updated_at, is_deleted, date, objectif_degustations, objectif_ventes, history_id, history_date, history_change_reason, history_type, history_user_id, hotesse_id, site_id) FROM stdin;
f959e4d0-d73b-4d1b-8f8e-af9a3a6ff64f    2026-06-11 17:21:00.123695+00   2026-06-11 17:21:00.123703+00        f       2026-06-11      0       60      da4d168b-d112-4e07-b4a3-1fbeefc49b1e2026-06-11 17:21:00.126019+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2
5fb825fe-ece5-4e94-b73a-40195a6f3d31    2026-06-11 17:21:33.555368+00   2026-06-11 17:21:33.555377+00        f       2026-06-11      0       60      9483e34a-10de-42c0-a0c1-b6b2efe142982026-06-11 17:21:33.557275+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2
e38bf9c4-eeb9-4781-82e8-2a79d24e0163    2026-06-11 17:22:00.816124+00   2026-06-11 17:22:00.816133+00        f       2026-06-11      0       30      251dadfe-30f7-4da3-b3fd-33de79ac6ff92026-06-11 17:22:00.818215+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    90c7cf46-e3ba-4172-8391-7cc53b7379c8 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d98c47fc-f171-456b-a392-368e89822816    2026-06-11 17:22:15.377611+00   2026-06-11 17:22:15.37762+00 f       2026-06-11      0       30      c71c2b25-a81b-444c-833e-b944d2c8cba1    2026-06-11 17:22:15.379478+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
6781feda-4cf7-4ee6-80c5-e301ef73471b    2026-06-11 17:22:29.618736+00   2026-06-11 17:22:29.618745+00        f       2026-06-11      0       30      97d62120-14db-4cda-9925-40670b7c70e02026-06-11 17:22:29.620557+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
c210b1e6-b3f5-4257-91d3-5db1dd129a83    2026-06-11 17:23:44.975612+00   2026-06-11 17:23:44.975619+00        f       2026-06-11      0       30      8e2ff8bc-f0c2-43b0-8574-c06df3f69fcb2026-06-11 17:23:44.977277+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
850f0971-7bc4-4158-b943-e49f4f951f62    2026-06-11 17:24:04.305268+00   2026-06-11 17:24:04.305278+00        f       2026-06-11      0       60      c6c08bca-1ec3-4c9b-839e-b639b93041202026-06-11 17:24:04.307309+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
4dd92f97-e85c-4e7f-9bb3-fd9d27d1825d    2026-06-11 17:24:21.137348+00   2026-06-11 17:24:21.137357+00        f       2026-06-11      0       60      d89d8ad7-d8ca-4015-ad6e-f0226d62ba3b2026-06-11 17:24:21.139984+00    \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
f959e4d0-d73b-4d1b-8f8e-af9a3a6ff64f    2026-06-11 17:21:00.123695+00   2026-06-16 16:47:25.704085+00        f       2026-06-16      0       60      bfa60257-5ea2-4455-82e5-7213891c71f72026-06-16 16:47:25.709474+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2
4dd92f97-e85c-4e7f-9bb3-fd9d27d1825d    2026-06-11 17:24:21.137348+00   2026-06-16 16:47:43.076103+00        f       2026-06-16      0       60      daa960e7-1c59-4f7b-925f-81ecd3ba6e582026-06-16 16:47:43.080097+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
5fb825fe-ece5-4e94-b73a-40195a6f3d31    2026-06-11 17:21:33.555368+00   2026-06-16 16:47:54.655312+00        f       2026-06-16      0       60      a4d79581-1d05-4230-888d-e39f426bc97e2026-06-16 16:47:54.659534+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2
5fb825fe-ece5-4e94-b73a-40195a6f3d31    2026-06-11 17:21:33.555368+00   2026-06-16 16:48:05.138964+00        f       2026-06-16      0       60      bfbfebaa-aee4-4e4e-8e9c-0fbc50ca34f42026-06-16 16:48:05.143068+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2
850f0971-7bc4-4158-b943-e49f4f951f62    2026-06-11 17:24:04.305268+00   2026-06-16 16:48:42.832007+00        f       2026-06-16      0       60      c7d1058a-2335-4433-bf7a-7c8e54310bc22026-06-16 16:48:42.835775+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c210b1e6-b3f5-4257-91d3-5db1dd129a83    2026-06-11 17:23:44.975612+00   2026-06-16 16:48:55.976245+00        f       2026-06-16      0       30      742bf5ed-a572-4d4d-8305-f0f6c12c0ec12026-06-16 16:48:55.980248+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
6781feda-4cf7-4ee6-80c5-e301ef73471b    2026-06-11 17:22:29.618736+00   2026-06-16 16:49:06.93602+00 f       2026-06-16      0       30      c105e4ea-14e8-4918-b2f2-b0d8fc1c7656    2026-06-16 16:49:06.940307+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d98c47fc-f171-456b-a392-368e89822816    2026-06-11 17:22:15.377611+00   2026-06-16 16:54:00.296181+00        f       2026-06-16      0       30      7e51f53f-d4d5-4180-849e-9a1ef898c8532026-06-16 16:54:00.300576+00    \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
\.


--
-- Data for Name: btl_historicalproduit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalproduit (id, created_at, updated_at, is_deleted, nom, description, prix_indicatif, history_id, history_date, history_change_reason, history_type, entreprise_id, history_user_id, type_conditionnement) FROM stdin;
ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    2026-06-17 19:38:04.876926+00   2026-06-17 19:38:04.876937+00        f       produit 1       \N      \N      4c942a31-a704-47d8-a72d-a653b71b47c92026-06-17 19:38:04.880635+00    \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea UNITE
218dbd2b-32ec-4ad7-b897-4198d5a0343c    2026-06-17 22:37:01.241756+00   2026-06-17 22:37:01.241766+00        f       TEST produit    \N      500.00  9e9e45b7-e575-4d03-9343-14a34afdb1cc2026-06-17 22:37:01.247364+00    \N      +       d871013c-b3b7-451c-af35-800d1ab9538c    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea UNITE
\.


--
-- Data for Name: btl_historicalpromotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalpromotion (id, created_at, updated_at, is_deleted, type_promotion, quantite_requise, recompense_description, is_active, history_id, history_date, history_change_reason, history_type, campagne_id, history_user_id, quantite_offerte) FROM stdin;
7204f98c-c025-462b-9868-44570d752d95    2026-06-11 17:19:46.149661+00   2026-06-11 17:19:46.14967+00 f       OFFERT  3       1       t       eda115cf-24e8-46ce-9ef2-9c8e385a8086    2026-06-11 17:19:46.151729+00        \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
5480ce9b-5b25-46d3-a729-04e09996c208    2026-06-11 17:19:46.152264+00   2026-06-11 17:19:46.152273+00        f       GAGNE   6       1       t       4fede711-b707-41cd-8460-2c218ddf46aa2026-06-11 17:19:46.154416+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
5faacc3f-4f81-4d03-b731-c2dcf907fc09    2026-06-16 08:15:54.127106+00   2026-06-16 08:15:54.127118+00        f       OFFERT  2       2 acehtés=1 offerte     t       59ea65da-0d76-4ef2-bd0c-e5362e99a881 2026-06-16 08:15:54.131443+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    1
5faacc3f-4f81-4d03-b731-c2dcf907fc09    2026-06-16 08:15:54.127106+00   2026-06-16 18:59:39.196586+00        f       OFFERT  2       2 achetés=1 offert      t       21e079a1-4757-41dc-a838-105b1657b239 2026-06-16 18:59:39.201898+00   \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    1
5faacc3f-4f81-4d03-b731-c2dcf907fc09    2026-06-16 08:15:54.127106+00   2026-06-16 18:59:55.308366+00        f       OFFERT  2       Radisson 2 achetés=1 offert     t       270b886a-ad83-4ba0-88ec-1aa49f2e1031 2026-06-16 18:59:55.312193+00   \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199 593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    1
9f9c7a4a-dd1d-4f80-bfd2-8644b5fb3943    2026-06-17 19:39:22.527226+00   2026-06-17 19:39:22.527237+00        f       OFFERT  2       1       t       247a6880-5c75-4e22-9bbe-b107f25e57bb2026-06-17 19:39:22.534948+00    \N      +       1529df21-8811-4562-b88c-ac3652cf9010    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
6aa014e0-3636-42c0-88c4-1fd0fe9b0fcf    2026-06-17 19:39:22.526814+00   2026-06-17 19:39:22.526823+00        f       GAGNE   5       2       t       e539a756-ebf1-4d4a-b347-08a965f307b42026-06-17 19:39:22.53007+00     \N      +       1529df21-8811-4562-b88c-ac3652cf9010    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
74852258-0da9-48c7-aa02-9e03c703a2ee    2026-06-18 08:26:24.705645+00   2026-06-18 08:26:24.705656+00        f       OFFERT  3       1       t       6be9ed3e-9952-4d22-a8db-9112b31e91b12026-06-18 08:26:24.709463+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
3c363b65-b203-4b67-9601-fe19caad9c52    2026-06-18 08:26:24.725375+00   2026-06-18 08:26:24.725385+00        f       GAGNE   5       1       t       6bce15fe-6781-496a-9ef3-a623d26d98a02026-06-18 08:26:24.728723+00    \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1
\.


--
-- Data for Name: btl_historicalrapportjournalier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalrapportjournalier (id, created_at, updated_at, is_deleted, date, nb_degustations, nb_ventes, chiffre_affaires, email_envoye, history_id, history_date, history_change_reason, history_type, history_user_id, hotesse_id, site_id, nb_goodies) FROM stdin;
9ae8d330-21a1-4218-bfec-82ea25ecd829    2026-06-17 22:10:49.928873+00   2026-06-17 22:10:49.929482+00        f       2026-06-17      14      22      0.00    f       2cf528b0-89e0-4bfb-983a-e0a68db4b71f 2026-06-17 22:10:50.191149+00   \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
9ae8d330-21a1-4218-bfec-82ea25ecd829    2026-06-17 22:10:49.928873+00   2026-06-17 22:10:49.929482+00        f       2026-06-17      14      22      0.00    t       425edec7-6b72-4977-a599-3ad80262ed00 2026-06-17 22:10:52.716346+00   \N      ~       \N      77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
99623ed2-fc17-4e24-a7d9-618da3d592d6    2026-06-17 22:10:58.601977+00   2026-06-17 22:10:58.601999+00        f       2026-06-17      10      13      0.00    f       67bbe0b7-3f09-450f-88ec-d3d6e5cc4f4d 2026-06-17 22:10:58.86041+00    \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
99623ed2-fc17-4e24-a7d9-618da3d592d6    2026-06-17 22:10:58.601977+00   2026-06-17 22:10:58.601999+00        f       2026-06-17      10      13      0.00    t       54f79b37-3d30-4e54-8d54-20498d434471 2026-06-17 22:11:00.993286+00   \N      ~       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
4c299f3e-d766-458e-8b9b-63201592b062    2026-06-17 22:11:03.621537+00   2026-06-17 22:11:03.621589+00        f       2026-06-17      2       2       0.00    f       89ebf5f0-0716-4b57-9e31-9882c2e7bac1 2026-06-17 22:11:03.87656+00    \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
4c299f3e-d766-458e-8b9b-63201592b062    2026-06-17 22:11:03.621537+00   2026-06-17 22:11:03.621589+00        f       2026-06-17      2       2       0.00    t       bfe74548-4780-4bbf-be9b-3a039b6de938 2026-06-17 22:11:06.101555+00   \N      ~       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
f73038a0-2835-493d-bb35-e93a65a14514    2026-06-17 22:11:08.198768+00   2026-06-17 22:11:08.198801+00        f       2026-06-17      0       0       0.00    f       8c23ab5b-5448-4200-af62-3e7a77ce6612 2026-06-17 22:11:08.456213+00   \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
f73038a0-2835-493d-bb35-e93a65a14514    2026-06-17 22:11:08.198768+00   2026-06-17 22:11:08.198801+00        f       2026-06-17      0       0       0.00    t       688966a1-6c6d-4047-b6d9-dfc7ecfe601a 2026-06-17 22:11:09.898583+00   \N      ~       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
870555c8-9fa5-41c8-addc-2c6087602269    2026-06-17 22:11:13.549358+00   2026-06-17 22:11:13.549371+00        f       2026-06-17      3       6       0.00    f       2f2c800e-cc72-4f51-aafd-f7c3879c6ddc 2026-06-17 22:11:13.804841+00   \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
870555c8-9fa5-41c8-addc-2c6087602269    2026-06-17 22:11:13.549358+00   2026-06-17 22:11:13.549371+00        f       2026-06-17      3       6       0.00    t       2e249c9b-8989-49c7-9e3d-ae060544508c 2026-06-17 22:11:15.210088+00   \N      ~       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c016ab66-278d-4700-8c34-8025c3407a8c    2026-06-17 22:11:17.287456+00   2026-06-17 22:11:17.287463+00        f       2026-06-17      0       0       0.00    f       891e4b62-a1fc-474c-b71b-5badfa1ef3c5 2026-06-17 22:11:17.545641+00   \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c016ab66-278d-4700-8c34-8025c3407a8c    2026-06-17 22:11:17.287456+00   2026-06-17 22:11:17.287463+00        f       2026-06-17      0       0       0.00    t       8d1be7fb-91e0-4fc8-98e3-274ee61ae12e 2026-06-17 22:11:19.14855+00    \N      ~       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c7f65999-6e33-4f59-b377-5d0683104d44    2026-06-17 22:11:22.785827+00   2026-06-17 22:11:22.786092+00        f       2026-06-17      3       6       0.00    f       6872cd32-6876-479d-b846-2d2b338d0c79 2026-06-17 22:11:23.043853+00   \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c7f65999-6e33-4f59-b377-5d0683104d44    2026-06-17 22:11:22.785827+00   2026-06-17 22:11:22.786092+00        f       2026-06-17      3       6       0.00    t       b7cf94ea-75fb-4a2b-99e6-e9e20b5662ff 2026-06-17 22:11:24.476463+00   \N      ~       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
e790c1d3-0570-4400-bb7c-fd15a8092aa0    2026-06-17 22:11:26.537895+00   2026-06-17 22:11:26.537924+00        f       2026-06-17      9       0       0.00    f       ef11a7a7-99d4-407a-87ad-dc66c58091c5 2026-06-17 22:11:26.792829+00   \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
e790c1d3-0570-4400-bb7c-fd15a8092aa0    2026-06-17 22:11:26.537895+00   2026-06-17 22:11:26.537924+00        f       2026-06-17      9       0       0.00    t       a4a46fcc-8d35-4742-8b93-e8462d376a43 2026-06-17 22:11:28.248932+00   \N      ~       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
ba47c27c-fa4a-48ff-9a88-da112e01508b    2026-06-17 22:11:30.30041+00    2026-06-17 22:11:30.300426+00        f       2026-06-17      0       0       0.00    f       31e79cdd-0c1b-4995-b4ea-bd39ffcfec5d 2026-06-17 22:11:30.555263+00   \N      +       \N      ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
ba47c27c-fa4a-48ff-9a88-da112e01508b    2026-06-17 22:11:30.30041+00    2026-06-17 22:11:30.300426+00        f       2026-06-17      0       0       0.00    t       33e3d14f-5eeb-40cb-a542-7182c1941ede 2026-06-17 22:11:31.949361+00   \N      ~       \N      ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
dd8d1c9a-0448-40dd-9db4-397d26895222    2026-06-18 22:15:21.533445+00   2026-06-18 22:15:21.53414+00 f       2026-06-18      17      20      31500.00        f       443e20eb-e0db-4446-b5a0-dc6f6cedd3cc 2026-06-18 22:15:21.79756+00    \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade    8
c8b28705-4c02-42db-81e3-7ec6ffdf3773    2026-06-18 22:15:24.478587+00   2026-06-18 22:15:24.478605+00        f       2026-06-18      1       0       0.00    f       9c3bf621-6f1b-4302-b953-eeb9c79dd513 2026-06-18 22:15:24.740802+00   \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc    3
d46007df-4cd1-47d4-bbdc-19a6ef76ec5a    2026-06-18 22:15:27.416596+00   2026-06-18 22:15:27.416767+00        f       2026-06-18      0       0       0.00    f       1fe21bed-a1e5-48d5-b7d1-d01b8e90ebbb 2026-06-18 22:15:27.683039+00   \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
d46007df-4cd1-47d4-bbdc-19a6ef76ec5a    2026-06-18 22:15:27.416596+00   2026-06-18 22:15:27.416767+00        f       2026-06-18      0       0       0.00    t       36f0c8ba-b9ab-42d6-b090-28f9c57d2048 2026-06-18 22:15:29.424644+00   \N      ~       \N      77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
ee4c1026-2541-4091-abba-8fccc93fce86    2026-06-18 22:15:32.08833+00    2026-06-18 22:15:32.088352+00        f       2026-06-18      1       2       0.00    f       7b3cce3d-802c-4e58-b21c-eee06455961f 2026-06-18 22:15:32.351329+00   \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
ee4c1026-2541-4091-abba-8fccc93fce86    2026-06-18 22:15:32.08833+00    2026-06-18 22:15:32.088352+00        f       2026-06-18      1       2       0.00    t       da380178-68a0-42b0-a026-ff41242395ec 2026-06-18 22:15:34.03372+00    \N      ~       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
6f27dee2-25d8-4dea-92c0-1ad65971f9f2    2026-06-18 22:15:36.176239+00   2026-06-18 22:15:36.176255+00        f       2026-06-18      0       0       0.00    f       bc13b2c8-5bcb-4de6-b3e8-29526e4377e4 2026-06-18 22:15:36.438171+00   \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
6f27dee2-25d8-4dea-92c0-1ad65971f9f2    2026-06-18 22:15:36.176239+00   2026-06-18 22:15:36.176255+00        f       2026-06-18      0       0       0.00    t       a8bcb9fd-ce6c-4c23-91f1-f19006d31426 2026-06-18 22:15:38.11052+00    \N      ~       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
77e6de86-e4ac-4a67-9633-dcbaa6df8b76    2026-06-18 22:15:40.245769+00   2026-06-18 22:15:40.245804+00        f       2026-06-18      0       0       0.00    f       fa1716ed-68ae-43f1-a497-e134285b9031 2026-06-18 22:15:40.509157+00   \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
77e6de86-e4ac-4a67-9633-dcbaa6df8b76    2026-06-18 22:15:40.245769+00   2026-06-18 22:15:40.245804+00        f       2026-06-18      0       0       0.00    t       f3cf7d46-4de4-474c-a417-5c5de65ed14b 2026-06-18 22:15:42.156358+00   \N      ~       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
bd1d8299-54c8-4b0e-96a1-b32d30f4ce4a    2026-06-18 22:15:44.279645+00   2026-06-18 22:15:44.279674+00        f       2026-06-18      0       0       0.00    f       77793fac-b61c-4fb4-a21f-4af66eb86f85 2026-06-18 22:15:44.550995+00   \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
bd1d8299-54c8-4b0e-96a1-b32d30f4ce4a    2026-06-18 22:15:44.279645+00   2026-06-18 22:15:44.279674+00        f       2026-06-18      0       0       0.00    t       6b7b94c6-a71e-42ef-9d1a-d937cac4a035 2026-06-18 22:15:46.215592+00   \N      ~       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
b3e94fd8-6e40-4de1-829f-21d339afd06c    2026-06-18 22:15:48.347654+00   2026-06-18 22:15:48.347685+00        f       2026-06-18      0       0       0.00    f       0d838c25-192e-414f-b430-3993366ac74a 2026-06-18 22:15:48.609449+00   \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
b3e94fd8-6e40-4de1-829f-21d339afd06c    2026-06-18 22:15:48.347654+00   2026-06-18 22:15:48.347685+00        f       2026-06-18      0       0       0.00    t       12b69398-8ed9-45f1-bd95-8b81b11dae18 2026-06-18 22:15:50.316508+00   \N      ~       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
d97a5b94-4161-475b-9511-fdb435a287a1    2026-06-18 22:15:52.973274+00   2026-06-18 22:15:52.973312+00        f       2026-06-18      1       2       0.00    f       c5c2af92-c349-4d70-bffa-d5fae3bf0fbd 2026-06-18 22:15:53.233649+00   \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
d97a5b94-4161-475b-9511-fdb435a287a1    2026-06-18 22:15:52.973274+00   2026-06-18 22:15:52.973312+00        f       2026-06-18      1       2       0.00    t       c5289c29-e87f-4833-8d88-e80c3e716780 2026-06-18 22:15:54.837304+00   \N      ~       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
72abb6ec-1c41-47be-b1a0-9a2fe923685d    2026-06-18 22:15:56.968881+00   2026-06-18 22:15:56.968932+00        f       2026-06-18      0       0       0.00    f       39b6e3ab-c0ae-45b5-af2c-b3660d42d353 2026-06-18 22:15:57.231001+00   \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
72abb6ec-1c41-47be-b1a0-9a2fe923685d    2026-06-18 22:15:56.968881+00   2026-06-18 22:15:56.968932+00        f       2026-06-18      0       0       0.00    t       b8c3a6be-c5f5-43aa-9bbd-5f261ac4a3c2 2026-06-18 22:15:58.846739+00   \N      ~       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
51cd68cf-6423-47a6-b07f-e38cf8f323b4    2026-06-18 22:16:00.984777+00   2026-06-18 22:16:00.98479+00 f       2026-06-18      0       0       0.00    f       68d8c4cd-9a1c-4334-a993-9f7da95d2387 2026-06-18 22:16:01.250971+00   \N      +       \N      ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
51cd68cf-6423-47a6-b07f-e38cf8f323b4    2026-06-18 22:16:00.984777+00   2026-06-18 22:16:00.98479+00 f       2026-06-18      0       0       0.00    t       29a62195-da5c-4269-8930-3880a00116b3 2026-06-18 22:16:03.051438+00   \N      ~       \N      ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
\.


--
-- Data for Name: btl_historicalremoteuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalremoteuser (password, last_login, is_superuser, id, created_at, updated_at, is_deleted, username, email, name, role, is_active, is_staff, is_password_changed, history_id, history_date, history_change_reason, history_type, history_user_id) FROM stdin;
pbkdf2_sha256$1200000$XGvEo2N3AzVLTNdr2N7hbD$5QTcTKBhj5zI78D313jbvH5W7SN5piq7OgQ0pXEl+4k=   \N       t       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    2026-06-11 17:05:00.012012+00   2026-06-11 17:05:00.012022+00        f       ceverineelisee36        ceverineelisee36@gmail.com  Ceverine Administrateur  t       t       t       6d33e73b-4ca4-4c0f-bfc2-4d90defb0d08    2026-06-11 17:05:00.014698+00        \N      +       \N
pbkdf2_sha256$1200000$YZqJZcb3VamPLqT4qxt2Jv$vriJSNgT1EUNVsdq3VyNi82C1C6xpT0RYfg3sHxHgZ4=   \N       f       eeb0a090-3adb-44d4-9489-a0c1f968c4ab    2026-06-11 17:07:24.140232+00   2026-06-11 17:07:24.14024+00 f       valntoutoume    valntoutoume@yahoo.com  33 EXPORT       Entreprise   t       f       f       fbc2bb99-4ee4-410d-99c0-0b709ea0f3d5    2026-06-11 17:07:24.1414+00  \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$PHOHXEmVSVyDphFagaNDen$XwA4gl3qjbAodxXpkedA9uD3AtgRmT+j1gpWBYz9s7w=   \N       f       2dfa4f79-ee26-42bc-a654-374d3b5044d0    2026-06-11 17:07:47.621399+00   2026-06-11 17:07:47.621409+00        f       Suzie.loumba    Suzie.loumba@mhedia-ga.com      SuzieSuperviseur     t       f       f       0233cda6-1465-4416-ba68-29e2a20d5ddc    2026-06-11 17:07:47.625064+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$InIxb9pV6OnoNjCymlLLE5$urCHBGnHgvLIH5Zfq8f6AK24K9ZZmBZFyY9ONUGkJfI=   \N       f       90c7cf46-e3ba-4172-8391-7cc53b7379c8    2026-06-11 17:08:04.255929+00   2026-06-11 17:08:04.255938+00        f       alixe_32        alixe_32@icloud.com     Alixe YolenneHotesse t       f       f       8e89090f-c86a-402b-a556-6b1d9822b660    2026-06-11 17:08:04.258164+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$nTNDKfu07Zx5cq4Pd2iQvH$tiWLuJJcwV5+PWEfA763CBx0SmJexdLfNSCPWKbU4Ms=   \N       f       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    2026-06-11 17:08:25.068408+00   2026-06-11 17:08:25.068415+00        f       annemedzomobame annemedzomobame@gmail.com       Anne Tiphanie        Hotesse t       f       f       88e52bd4-1a87-4cc7-8d13-87c5bf455013    2026-06-11 17:08:25.070459+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$vjAqQDkTqyBsP3EAKAOYpv$I8U+LJtJJxhEsb1YzbpnhKe0enbcDmSAsIBJLw3w6so=   \N       f       5aa0dfbb-0c17-4463-bc2b-80c560251dd4    2026-06-11 17:08:35.808019+00   2026-06-11 17:08:35.808028+00        f       belindantsele13 belindantsele13@gmail.com       Bélinda      Hotesse t       f       f       bcebb35c-c291-41fd-8d77-dac4f50ab63a    2026-06-11 17:08:35.810293+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$l49agxE7g48WsGBr39BUAg$cIT31zmTk8m5q6adsYWfX99bWCIFGkVBUKJ1/zbCUOA=   \N       f       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    2026-06-11 17:09:22.998634+00   2026-06-11 17:09:22.998642+00        f       kibissof        kibissof@gmail.com      Frida La paixHotesse t       f       f       f4e8ef6e-3da5-420d-88b7-934a26910e32    2026-06-11 17:09:23.000931+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$mWLjOQNrljlzqxgclHYeu4$vbLS5gKfXw3Hab+tDNAbAinD3LaEeXinF38fW0XQ5Nc=   \N       f       77e0d595-d6da-4158-8f75-2e4f9947e156    2026-06-11 17:10:18.234838+00   2026-06-11 17:10:18.234845+00        f       mekinavenusia36 mekinavenusia36@gmail.com       Vénusia      Hotesse t       f       f       8efdede4-aa0a-404e-bb4d-b26d959c4b4a    2026-06-11 17:10:18.23742+00 \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$cTmPI6pt7emmDbtdYtCgrm$yZ1gVRHDKB5g8/WSIsOpQOFAdUx7PihLqx+TdJufRYE=   \N       f       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    2026-06-11 17:11:36.126536+00   2026-06-11 17:11:36.126544+00        f       akengjennifer   akengjennifer@gmail.com Jennifer    Hotesse  t       f       f       cf6884a9-104a-4017-9f00-1d95de1e012e    2026-06-11 17:11:36.128694+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$nOwHFVXOl7H25QPIHyz2Nz$bK/qfys2WaHw2gZtZF0GGPcZIKDn5dlRwh6Lc/3ee4g=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-11 17:12:31.482537+00        f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse      t       f       f       e88b7a2e-ebd1-4fa9-92da-ec1f8349759e    2026-06-11 17:12:31.484581+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$BXtzN78zf5abkAlvXrZ46X$h7HHrHQH5DuOKHPUOd5yPxagzHLoy+vLjBLOTc+jiDk=   \N       f       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea    2026-06-11 17:16:16.785849+00   2026-06-11 17:16:16.785857+00        f       moundoubi20062004       moundoubi20062004@gmail.com Sara K.  Hotesse t       f       f       73594f5b-aedb-4174-abf0-75de5ff624d8    2026-06-11 17:16:16.788163+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$INHi6FHkOiS6aUI57UWPLn$efaeH0rAkboKjyIGcjSDzpDLW2oilCoz/c4gSWxcP2U=   \N       f       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea    2026-06-11 17:16:16.785849+00   2026-06-11 17:35:30.975018+00        f       moundoubi20062004       moundoubi20062004@gmail.com Sara K.  Hotesse t       f       t       d5f0222d-1839-4faf-97ca-d00fe5d941c2    2026-06-11 17:35:30.978152+00        \N      ~       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea
pbkdf2_sha256$1200000$AYlucWQ4ihfQkdBgyc33XM$uKMU65vYnH2Oqk0yH0/a5RnGKxT9T7NHFgWFjlSaTwc=   \N       f       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    2026-06-11 17:11:36.126536+00   2026-06-11 17:35:55.61567+00 f       akengjennifer   akengjennifer@gmail.com Jennifer        Hotesse      t       f       t       7526c64b-8d06-42bf-9a6d-801df7fb826c    2026-06-11 17:35:55.619212+00        \N      ~       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6
pbkdf2_sha256$1200000$RUGk7VGS9KWWaEbq8wQ0Ie$JZVdosRPsYeKq3cw8UyDMxkYoRkujsOGVNttAm3gVDs=   \N       f       ee696594-655c-4e8b-ac92-b7b9fc2015f9    2026-06-11 18:35:42.218152+00   2026-06-11 18:35:42.218161+00        f       eliseejean366   eliseejean366@gmail.com Ceverine    Entreprise       t       f       f       8ff7cf68-b092-4386-97e0-8b3900904309    2026-06-11 18:35:42.219436+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$uUvazuM68iPYq1dX9PzY13$+MCeFNXtDJZL/ep7Q2CzfKPvK0ZxK3ORGnUbQt7BwzA=   \N       f       5aa0dfbb-0c17-4463-bc2b-80c560251dd4    2026-06-11 17:08:35.808019+00   2026-06-11 18:46:40.082393+00        f       belindantsele13 belindantsele13@gmail.com       Bélinda      Hotesse t       f       t       c64e7f13-4a41-4ee8-ba52-a125e78faf7d    2026-06-11 18:46:40.085272+00        \N      ~       5aa0dfbb-0c17-4463-bc2b-80c560251dd4
pbkdf2_sha256$1200000$bYbrxlxHLorn2BLSfwLmdA$MtpKdVfUNPBHyzTtWh/e2UYhTvo1CN2sxstCRCS7xqk=   \N       f       2dfa4f79-ee26-42bc-a654-374d3b5044d0    2026-06-11 17:07:47.621399+00   2026-06-11 19:03:00.446672+00        f       Suzie.loumba    Suzie.loumba@mhedia-ga.com      SuzieSuperviseur     t       f       f       71699d92-ebe1-43e3-9c99-f1dd03224e45    2026-06-11 19:03:00.451155+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$hFhOMpuwn2Z5OpG2fP70fx$OpDQMiZ0ZDXeFC82HgGhct/ubf2ArHvSxTqS9sUf7MA=   \N       f       76c3d46e-ce06-4ecd-bf4f-6d55b14cda6a    2026-06-11 19:04:13.242646+00   2026-06-11 19:04:13.242656+00        f       yvan.nellsing   yvan.nellsing@gmail.com Yvan Sup    Superviseur      t       f       f       59d6fe27-7d65-4f94-b956-a0094334daec    2026-06-11 19:04:13.246797+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$I88lIEcVyNpKNeCyexpMPw$zq8C8WRZflEokgbjPlEz0zGozClg8kViTy934AdHYSU=   \N       f       77e0d595-d6da-4158-8f75-2e4f9947e156    2026-06-11 17:10:18.234838+00   2026-06-11 19:04:51.248144+00        f       mekinavenusia36 mekinavenusia36@gmail.com       Vénusia      Hotesse t       f       t       d9df3dbd-260c-431e-8e2a-7b49663add9d    2026-06-11 19:04:51.252558+00        \N      ~       77e0d595-d6da-4158-8f75-2e4f9947e156
pbkdf2_sha256$1200000$LIn1eedk2AKx1rujpdXYY4$uHqSdC8SVnl7gQzJ0pTT93CehkZQiK7J5sL/TTifDKU=   \N       f       08622270-639f-4e0c-8b9f-f869bdfbcca1    2026-06-11 19:05:54.59552+00    2026-06-11 19:05:54.595528+00        f       yvan.arsene     yvan.arsene@hotmail.com Yvan SUP 2  Superviseur      t       f       f       994100b2-e7d5-49c4-8cb5-9759f5171b17    2026-06-11 19:05:54.599991+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$d6yKkeKEznaWykSwXxY9oi$tQKX2QZgD85cyx25nF532e/85f/z123H33BeEUfxcGE=   \N       f       08622270-639f-4e0c-8b9f-f869bdfbcca1    2026-06-11 19:05:54.59552+00    2026-06-11 19:08:28.003472+00        f       yvan.arsene     yvan.arsene@hotmail.com Yvan SUP 2  Superviseur      t       f       t       37aa4cf0-eeac-439e-8f3e-e644e6599d56    2026-06-11 19:08:28.008149+00        \N      ~       08622270-639f-4e0c-8b9f-f869bdfbcca1
pbkdf2_sha256$1200000$32ZuqwltyVnTV0QiHq7gNY$yYoIFWntW4J/S/fOXsT1sJdLPIe24aGvgFkWxgxrD2Q=   \N       f       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    2026-06-11 17:08:25.068408+00   2026-06-11 19:29:50.573557+00        f       annemedzomobame annemedzomobame@gmail.com       Anne Tiphanie        Hotesse t       f       f       c40e237f-25d0-4968-8a48-df73b77a6796    2026-06-11 19:29:50.578467+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$XrMl1mBEdG0AUFUPOI0mr0$9YeCQYeh6WmR9eRgDxaFIYJowFKr8w0I5p49ih9c/DQ=   \N       f       08622270-639f-4e0c-8b9f-f869bdfbcca1    2026-06-11 19:05:54.59552+00    2026-06-11 19:35:27.385147+00        f       yvan.arsene     yvan.arsene@hotmail.com Yvan SUP 2  Superviseur      t       f       f       0b8e3ac3-b5c4-467b-80ad-0081b41a7ae4    2026-06-11 19:35:27.390034+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$nbXxLDLH7M9lcneHJT7WoJ$fhSKoyvINAIknQ/nKAmYgS/tqrBAMBgQiBnvUPhPAAI=   \N       f       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    2026-06-11 17:09:22.998634+00   2026-06-11 19:36:40.820427+00        f       kibissof        kibissof@gmail.com      Frida La paixHotesse t       f       t       3699ab6a-70f4-4007-a5a4-e9384ac0a57f    2026-06-11 19:36:40.8244+00  \N      ~       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4
pbkdf2_sha256$1200000$KnKbxNf3O2Q7gnCpleVOOW$8DsDc7j8Sf2JESl8xk7MpEsQ4WEWBLjDo9Jr10maKHU=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-11 20:09:44.11579+00 f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse t   ff       bf570336-27e5-45a1-af66-0e48b92194c9    2026-06-11 20:09:44.120306+00   \N      ~   593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$Jnn9Onq21IpsYaFjmiIRK1$Ea4Ei6yLIXbqTkZRzgp5qE9rPfZFuPqRgsVj4eC6Oio=   \N       f       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    2026-06-11 17:08:25.068408+00   2026-06-11 20:20:57.757913+00        f       annemedzomobame annemedzomobame@gmail.com       Anne Tiphanie        Hotesse t       f       f       6458a28a-f323-4ccd-ad28-389404193b13    2026-06-11 20:20:57.763313+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$MMvJMT40KLgdbGoaI63pi2$gkZxG9MIS4CQ9+FGltihX12oddEb2wkVbRgsKSe99E4=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-11 20:21:01.965618+00        f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse      t       f       f       0502b608-3617-4803-baa6-b2a9742da43e    2026-06-11 20:21:01.970192+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$jH2MfIZo8ghX7sHTATa6hg$uZPqBcI+Sqi3Z7t+N4jjYHrvb+LXKDqLtRiShwV8KmA=   \N       f       2dfa4f79-ee26-42bc-a654-374d3b5044d0    2026-06-11 17:07:47.621399+00   2026-06-11 20:21:08.597523+00        f       Suzie.loumba    Suzie.loumba@mhedia-ga.com      SuzieSuperviseur     t       f       f       05f8d8d5-03f4-4cd7-8b10-7d8b87623245    2026-06-11 20:21:08.601957+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$8daSaTr6N3s5Or9i6J3mei$h3V4r0GGPim0FscwN4rnQDmvyGlGihGWt7dKXaDecR0=   \N       t       a87adc7b-5da2-4c4a-b7d1-7edaeacd7146    2026-06-12 06:48:24.997199+00   2026-06-12 06:48:24.997207+00        f       maguy.ndzeng    maguy.ndzeng@mhedia-ga.com      Maguy Ndzeng Administrateur  t       t       t       3af8fc47-fe05-40a0-a841-963c44cc8bf3    2026-06-12 06:48:25.001545+00        \N      +       \N
pbkdf2_sha256$1200000$Lbjfyz2SeQX1s7wcwsF3BX$9XGJU8NeqRUM5gY+KRiroju/0GSy8f6twpuvcA8UPI8=   \N       f       eeb0a090-3adb-44d4-9489-a0c1f968c4ab    2026-06-11 17:07:24.140232+00   2026-06-15 11:40:31.469506+00        f       valntoutoume    valntoutoume@yahoo.com  33 EXPORT   Entreprise       t       f       f       7eb7945d-bc75-4f05-b359-3f721daa9401    2026-06-15 11:40:31.472387+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$Mro4mejoyDZHYepUkCc7Yf$Y3Aaa2PF6j5FFFyVwdP52PF7bWS89EvFZq05KvkTEsw=   \N       f       ee696594-655c-4e8b-ac92-b7b9fc2015f9    2026-06-11 18:35:42.218152+00   2026-06-15 11:43:31.341332+00        f       eliseejean366   eliseejean366@gmail.com Ceverine    Entreprise       t       f       f       658ae6e0-475a-4217-af1f-cd42cbad16bd    2026-06-15 11:43:31.343709+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$F6VAEQxtDXRLkl6jp45YWl$WwYGpE6+4owGoviNOxFG4QLq1M40Y10dicR2DTySzYE=   \N       f       5aa0dfbb-0c17-4463-bc2b-80c560251dd4    2026-06-11 17:08:35.808019+00   2026-06-15 12:39:28.159136+00        f       belindantsele13 belindantsele13@gmail.com       Bélinda      Hotesse t       f       f       44b25f50-868b-488d-9379-b235a9932e39    2026-06-15 12:39:28.162261+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$kSHowWxMP4M0btnL4pOn53$/IsVgWudcPkLZznWRFGCC9ytaq4MblYCpsbZR7Eopv4=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-15 12:40:15.183909+00        f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse      t       f       f       6372e729-2e4e-431f-b9f1-1ef8fb93df3f    2026-06-15 12:40:15.186688+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$jicH7O0yxPm1J1mbM2OoND$XXHHeiJqeQEGJfUv99J47mUKeNCPi/85kM2nsd1rFp8=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-15 12:43:05.302431+00        f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse      t       f       t       c84380dd-196c-4714-ba3b-935f0a8f47d7    2026-06-15 12:43:05.305166+00        \N      ~       9965cbe1-3a28-4c15-97c7-08bb532dbb8c
pbkdf2_sha256$1200000$jIYXXBHECC65RMgs2FA7Tu$FZfHNnjEc9jxF31MAzmxTxl2dnBTtpgbq+tu5aH2CYM=   \N       f       20c325a0-f0bf-43cd-8a37-3461b093037f    2026-06-15 12:53:57.141581+00   2026-06-15 12:53:57.141589+00        f       nguemadiamela   nguemadiamela@gmail.com Diamela NGUEMA       Superviseur     t       f       f       8c6f467e-ac59-4a50-8ec5-8313c5715f12    2026-06-15 12:53:57.144392+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$yQi2OTHA9mcELrwJH7awCP$dEADmXwTChbUu38lC4gIzcEuCSG3xRVWlcA12kurU+g=   \N       f       5aa0dfbb-0c17-4463-bc2b-80c560251dd4    2026-06-11 17:08:35.808019+00   2026-06-15 12:54:58.305065+00        f       belindantsele13 belindantsele13@gmail.com       Bélinda      Hotesse t       f       t       5be756f6-3a32-49df-b911-bf7c4edd8a77    2026-06-15 12:54:58.308206+00        \N      ~       5aa0dfbb-0c17-4463-bc2b-80c560251dd4
pbkdf2_sha256$1200000$Y7uJDUMdqftcWD4RyXJJyi$mMtta1ZjeguraLNqV/lAfYWXd00Krmk1iAxc7weUvOg=   \N       f       20c325a0-f0bf-43cd-8a37-3461b093037f    2026-06-15 12:53:57.141581+00   2026-06-15 12:56:44.043173+00        f       nguemadiamela   nguemadiamela@gmail.com Diamela NGUEMA       Superviseur     t       f       t       7f6fad08-1dc4-41c2-b8e6-7726c3ff50fb    2026-06-15 12:56:44.046929+00        \N      ~       20c325a0-f0bf-43cd-8a37-3461b093037f
pbkdf2_sha256$1200000$lXm6nnGU0AWhVotMNlXwGE$QhPjkuD+dKjbHPNGeO62lsK7QEWMXqQlAQ4Ye/+ibPo=   \N       f       eeb0a090-3adb-44d4-9489-a0c1f968c4ab    2026-06-11 17:07:24.140232+00   2026-06-15 13:18:51.614598+00        f       valntoutoume    valntoutoume@yahoo.com  33 EXPORT   Entreprise       t       f       t       87c7dab3-ad79-480e-a57f-b2dc7937634f    2026-06-15 13:18:51.621012+00        \N      ~       eeb0a090-3adb-44d4-9489-a0c1f968c4ab
pbkdf2_sha256$1200000$InIxb9pV6OnoNjCymlLLE5$urCHBGnHgvLIH5Zfq8f6AK24K9ZZmBZFyY9ONUGkJfI=   \N       f       90c7cf46-e3ba-4172-8391-7cc53b7379c8    2026-06-11 17:08:04.255929+00   2026-06-15 20:47:31.313406+00        t       alixe_32        alixe_32@icloud.com     Alixe YolenneHotesse t       f       f       c7d3d0c5-eba2-4793-8721-6658470e68c4    2026-06-15 20:47:31.315647+00        \N      ~       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$bdv60hMXPfKYYgThMAFYnq$NVT4ZowHWoPpowLfhq0G+HZPAE7INVcW9nIUTVQDfSs=   \N       f       5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    2026-06-15 20:48:22.768724+00   2026-06-15 20:48:22.768732+00        f       alixe32 alixe32@icloud.com      Alixe Yolenne   Hotesse      t       f       f       0f8cd804-a378-4cb1-a52b-86ec4f3e5fce    2026-06-15 20:48:22.771245+00        \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$cxRrKJ27Z57aHGPmuxwObr$LI1XnbqPU72Ms7Iz44NttwwQxWMHtAQ7U9Ue7bcyRDo=   \N       f       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    2026-06-11 17:08:25.068408+00   2026-06-16 12:34:31.324591+00        f       annemedzomobame annemedzomobame@gmail.com       Anne Tiphanie        Hotesse t       f       t       37f3f700-ceb7-45b4-a7c8-75b70a1db7ae    2026-06-16 12:34:31.330102+00        \N      ~       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1
pbkdf2_sha256$1200000$DwVsBaNmhtQCgyfPFZWGGV$xC3wHeR3tSoNKrT8iQsbaGhlcqqcgRi8O/DNbALnDYY=   \N       f       5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    2026-06-15 20:48:22.768724+00   2026-06-16 12:37:55.50777+00 f       alixe32 alixe32@icloud.com      Alixe Yolenne   Hotesse t   ft       7357c6e9-ae2b-4f25-aeb7-3fb4f691f6a6    2026-06-16 12:37:55.512825+00   \N      ~   5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd
pbkdf2_sha256$1200000$LG16MyZmB36oKLZ63vp7JJ$DcBHUCi0YvJ11RZ+UFHjHGEFtxVu3Nkfwa2VmjMYRSo=   \N       f       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    2026-06-17 18:11:08.576039+00   2026-06-17 18:11:08.576047+00        f       bissafanny25    bissafanny25@gmail.com  CEVERINE    Hotesse  t       f       f       c4bf862f-9511-4184-a99e-61d7facd2f87    2026-06-17 18:11:08.58176+00 \N      +       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
pbkdf2_sha256$1200000$12PW14i96fDwdUD743MdSj$8Nyhun7ce1KKaZtP04zHYeWAnDVExaPqg+xaBz+fRVM=   \N       f       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    2026-06-17 18:11:08.576039+00   2026-06-17 18:16:54.014228+00        f       bissafanny25    bissafanny25@gmail.com  CEVERINE    Hotesse  t       f       t       92bdd8e4-5daa-4f8c-873c-3069b6ad668f    2026-06-17 18:16:54.019661+00        \N      ~       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
\.


--
-- Data for Name: btl_historicalsite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalsite (id, created_at, updated_at, is_deleted, nom, ville, emplacement_precis, history_id, history_date, history_change_reason, history_type, campagne_id, history_user_id) FROM stdin;
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-11 17:19:43.312544+00        f       Dynamic Pool    Libreville      \N      2882221c-9341-4b99-a0a9-c012b77a4951 2026-06-11 17:19:43.314549+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    2026-06-11 17:19:43.313065+00   2026-06-11 17:19:43.313076+00        f       Radisson        Libreville      \N      4c956dec-5b09-4fbc-b9c4-63c69126e92d 2026-06-11 17:19:43.315434+00   \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
31ab0910-ff6c-4f50-abd1-6054890c27b2    2026-06-11 17:19:43.321693+00   2026-06-11 17:19:43.321699+00        f       LMB     Libreville      \N      c6ae3e6b-6b05-4684-9273-1b448413ce572026-06-11 17:19:43.323627+00    \N      +       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-17 11:24:18.802223+00        f       TIPS    Libreville      \N      911a7bc8-d62e-45e1-a7c7-e6d51b5d081c2026-06-17 11:24:18.806713+00    \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-17 14:29:04.86824+00 f       Dynamic Pool    Libreville      \N      b5c5d01a-fefc-4bd2-869b-a8e95cfe07702026-06-17 14:29:04.872549+00    \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-17 14:30:30.986692+00        f       TIPS    Libreville      \N      97755de5-689e-4248-ba28-ef2e4bebe8ea2026-06-17 14:30:30.991159+00    \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
0ab94840-ff6c-44da-92b9-14bdef894bfc    2026-06-17 22:32:07.864989+00   2026-06-17 22:32:07.865001+00        f       TEST LBV        Libreville      test    08114cf3-a700-4c25-9fec-6a3eec74e5bd 2026-06-17 22:32:07.870428+00   \N      +       885cf097-4539-44fb-9231-c023f5b0eb9d593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
98e0c8c7-248c-480d-a84b-04a8e4b8aade    2026-06-18 08:26:22.676434+00   2026-06-18 08:26:22.676445+00        f       LEON MBA        Libreville      \N      0aede16b-0867-4aa3-8963-a7cdd51df260 2026-06-18 08:26:22.680134+00   \N      +       aeab771d-5fd2-4ab9-9a9b-a29b38215fa4593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-18 17:14:11.5697+00  f       TIPS    Libreville      \N      ba62c5bb-932a-43f5-a393-6db2c90b4182    2026-06-18 17:14:11.571823+00        \N      ~       d36107b8-f8fd-4250-a37b-2920a2e92199    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea
\.


--
-- Data for Name: btl_historicalsiteproduitprix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalsiteproduitprix (id, created_at, updated_at, is_deleted, prix, history_id, history_date, history_change_reason, history_type, history_user_id, produit_id, site_id) FROM stdin;
\.


--
-- Data for Name: btl_historicalstockgoodiesite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalstockgoodiesite (id, created_at, updated_at, is_deleted, quantite_initiale, quantite_restante, history_id, history_date, history_change_reason, history_type, goodie_id, history_user_id, site_id) FROM stdin;
d9e39243-6595-4160-9e4d-fb4f57728249    2026-06-11 17:26:04.184652+00   2026-06-11 17:26:04.184658+00        f       50      50      e80caa0b-2cec-4ede-867d-b25acda088b7    2026-06-11 17:26:04.186012+00        \N      +       96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
80f0d804-b553-453f-bf17-062b79af716e    2026-06-11 17:26:04.188177+00   2026-06-11 17:26:04.18818+00 f       50      50      afbf8b83-8a81-4885-974d-3e4bfdc5c2bb    2026-06-11 17:26:04.189115+00        \N      +       96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0bfb9734-96f2-4316-ada2-a600b903375f    2026-06-11 17:26:04.190368+00   2026-06-11 17:26:04.190371+00        f       50      50      c1adc23a-a500-4643-b4f0-e3fc1a7e7a06    2026-06-11 17:26:04.191523+00        \N      +       96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
fcab4936-5773-4108-8922-723f5d035069    2026-06-11 17:26:22.96038+00    2026-06-11 17:26:22.960387+00        f       17      17      a5899f07-622f-442c-b5bd-7d6247716a14    2026-06-11 17:26:22.961769+00        \N      +       a048da9b-fb75-43ae-a6d7-eaa931fec707    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
30ca8e0d-b31e-4558-a737-01ca4418076b    2026-06-11 17:26:22.963655+00   2026-06-11 17:26:22.963661+00        f       17      17      42557c47-bc48-48b1-9b97-380dabe318c4    2026-06-11 17:26:22.964672+00        \N      +       a048da9b-fb75-43ae-a6d7-eaa931fec707    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
896d9782-aa13-4f36-abb6-767ad2e87285    2026-06-11 17:26:22.965998+00   2026-06-11 17:26:22.966001+00        f       16      16      0b591323-acca-4525-9d25-cb2cb91a0cd1    2026-06-11 17:26:22.966975+00        \N      +       a048da9b-fb75-43ae-a6d7-eaa931fec707    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
7e373a5c-f43f-43a0-bbf5-cd61977abd4e    2026-06-11 17:27:08.755768+00   2026-06-11 17:27:08.755773+00        f       34      34      7fcf5a64-7b1d-447d-88fa-d6e9a2e6f2c0    2026-06-11 17:27:08.757427+00        \N      +       0e24738c-8b11-4067-9dad-26da764874e5    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
a8c7eebb-6b55-4d1a-8ef8-58f31ff89cc5    2026-06-11 17:27:08.759697+00   2026-06-11 17:27:08.759702+00        f       33      33      dcca1bd8-1db1-432a-b6f2-7e6bfdfb857b    2026-06-11 17:27:08.760747+00        \N      +       0e24738c-8b11-4067-9dad-26da764874e5    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
1b1463ef-db59-4a28-bbcf-836d8c06abb1    2026-06-11 17:27:08.762124+00   2026-06-11 17:27:08.762129+00        f       33      33      4eb60f9f-e5be-4f1d-93c1-1a7db6836c96    2026-06-11 17:27:08.762955+00        \N      +       0e24738c-8b11-4067-9dad-26da764874e5    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a99f0958-1c83-4050-971c-793b86668e12    2026-06-11 17:27:33.159945+00   2026-06-11 17:27:33.15995+00 f       17      17      7507d9d7-2ca2-482b-902d-f14cdc554625    2026-06-11 17:27:33.161322+00        \N      +       589fd6ed-d9ae-4074-a6d6-980089926534    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
d8049966-b1a3-4127-9d15-79078d2689e5    2026-06-11 17:27:33.162899+00   2026-06-11 17:27:33.162903+00        f       17      17      bdd04e01-6645-426e-bc9a-8e13292da8ec    2026-06-11 17:27:33.163935+00        \N      +       589fd6ed-d9ae-4074-a6d6-980089926534    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
65c21c7f-45c6-4b8c-afb1-11a6d0e73d9b    2026-06-11 17:27:33.165282+00   2026-06-11 17:27:33.165286+00        f       16      16      9e23730b-3359-440f-b29f-6b19cbc4560c    2026-06-11 17:27:33.166943+00        \N      +       589fd6ed-d9ae-4074-a6d6-980089926534    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
ff63844c-4b45-4316-a0a5-3d3550373c2b    2026-06-11 17:27:58.800543+00   2026-06-11 17:27:58.800548+00        f       17      17      105a0487-4a07-4e7b-9f3d-cd995a8f296b    2026-06-11 17:27:58.80158+00 \N      +       fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
2d3c64f6-8196-4bb4-9d5d-48b3db2b3b75    2026-06-11 17:27:58.80305+00    2026-06-11 17:27:58.803054+00        f       17      17      a9b0d271-8237-4976-82d7-6fdfeb11c899    2026-06-11 17:27:58.804003+00        \N      +       fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
13dda31d-efff-47d3-9f05-6c9ad0f37a09    2026-06-11 17:27:58.805993+00   2026-06-11 17:27:58.805997+00        f       16      16      3d178435-6d1c-4b60-a69d-3700f98eafaa    2026-06-11 17:27:58.806873+00        \N      +       fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c21d94f5-eada-4970-8f40-f343160aeb6f    2026-06-17 15:53:49.001186+00   2026-06-17 15:53:49.001194+00        f       2       2       2f9a4a48-2c63-44d5-b5df-c36ef57b909a    2026-06-17 15:53:49.004823+00        \N      +       274c3e55-aef1-41ab-b641-a24560eae583    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
7001f559-5e6b-45bf-800d-5bf674f53b19    2026-06-17 15:53:49.00985+00    2026-06-17 15:53:49.009856+00        f       1       1       0fc0b705-33c0-4c77-94fa-b3010ddac49b    2026-06-17 15:53:49.013262+00        \N      +       274c3e55-aef1-41ab-b641-a24560eae583    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
791a08c0-def9-4117-84e4-8197abcff066    2026-06-17 15:53:49.017156+00   2026-06-17 15:53:49.017162+00        f       1       1       a30c15e9-5f71-416a-8572-c51876e91992    2026-06-17 15:53:49.020307+00        \N      +       274c3e55-aef1-41ab-b641-a24560eae583    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
636518e6-d2f1-4573-9790-8b3b8fa3d277    2026-06-17 18:07:44.840835+00   2026-06-17 18:07:44.840842+00        f       2       2       e5aea2a5-2755-42e9-b492-5bb773d6786b    2026-06-17 18:07:44.845539+00        \N      +       acb45014-62c2-48be-80c8-234d3a416d35    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
e45f4f99-6a2c-41aa-9972-e97e94ffce0f    2026-06-17 18:07:44.853159+00   2026-06-17 18:07:44.853166+00        f       1       1       c909bf1f-40e4-438a-bcb9-53a4b50ec245    2026-06-17 18:07:44.860431+00        \N      +       acb45014-62c2-48be-80c8-234d3a416d35    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
66886e0f-6844-4e36-b3a5-474da0c732c7    2026-06-17 18:07:44.866244+00   2026-06-17 18:07:44.866249+00        f       1       1       2627b5ef-d3e1-4658-b763-e9022b828793    2026-06-17 18:07:44.872251+00        \N      +       acb45014-62c2-48be-80c8-234d3a416d35    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
fe49a41c-1646-48e2-9df4-6651ddc8bbee    2026-06-17 18:08:25.073062+00   2026-06-17 18:08:25.073071+00        f       2       2       c2818c42-f53c-4cef-ba86-818f8168661b    2026-06-17 18:08:25.076801+00        \N      +       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
c8caea35-7a8a-4bcb-9594-23b3b3ed13f3    2026-06-17 18:08:25.081423+00   2026-06-17 18:08:25.081429+00        f       1       1       029361a5-1366-4042-8890-6dcaa4c69046    2026-06-17 18:08:25.08487+00 \N      +       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
4f88b647-c910-47f5-92b0-5a2e509a78f8    2026-06-17 18:08:25.088834+00   2026-06-17 18:08:25.088839+00        f       1       1       d609c78f-d8c7-46e7-ac59-87f9be3c4847    2026-06-17 18:08:25.096331+00        \N      +       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
176d8334-313a-4abe-8341-7146f2faeb34    2026-06-17 18:08:55.731191+00   2026-06-17 18:08:55.7312+00  f       2       2       7c1f5bd6-552a-479d-8dd0-60b23def8989    2026-06-17 18:08:55.734907+00        \N      +       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
c0df26c5-98eb-4cb2-989d-40762e28e4b5    2026-06-17 18:08:55.739191+00   2026-06-17 18:08:55.739196+00        f       1       1       f649641d-2032-457e-b8f2-d278944d8913    2026-06-17 18:08:55.74273+00 \N      +       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7df0f093-45ef-4604-ba5f-1b5e18a34ec2    2026-06-17 18:08:55.746846+00   2026-06-17 18:08:55.746851+00        f       1       1       e322c125-30da-471e-9195-ee840d608ff2    2026-06-17 18:08:55.750643+00        \N      +       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
96a37a47-593e-4507-86bf-ba78fd50871c    2026-06-17 18:10:16.494591+00   2026-06-17 18:10:16.494602+00        f       2       2       8a4f6461-f3a2-4fae-ba0d-69d91694215b    2026-06-17 18:10:16.498789+00        \N      +       fa34a957-0c59-4526-a3af-db5d436a3e87    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 31ab0910-ff6c-4f50-abd1-6054890c27b2
d1ccfc78-e1d3-4e5c-b9f7-18f6dd34a354    2026-06-17 18:10:16.502833+00   2026-06-17 18:10:16.502839+00        f       1       1       f005c99e-f389-4bf5-ba41-82e78165beeb    2026-06-17 18:10:16.506766+00        \N      +       fa34a957-0c59-4526-a3af-db5d436a3e87    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
bee147f5-6289-48dd-b039-c72bf931d257    2026-06-17 18:10:16.511018+00   2026-06-17 18:10:16.511023+00        f       1       1       cf6e63fa-a9ec-43a6-8acc-7678088fd91e    2026-06-17 18:10:16.514199+00        \N      +       fa34a957-0c59-4526-a3af-db5d436a3e87    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-17 22:38:41.541832+00        f       100     100     f84b4a44-d0f1-42e8-9bf7-a872941694a9    2026-06-17 22:38:41.544971+00        \N      +       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 0ab94840-ff6c-44da-92b9-14bdef894bfc
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-17 22:55:33.913375+00        f       100     99      2223e8f4-45f2-48c4-b6e5-a735ce4497c1    2026-06-17 22:55:34.170406+00        \N      ~       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-17 22:57:54.612552+00        f       100     98      070ca40d-8708-422f-8050-6624f1edc276    2026-06-17 22:57:54.880245+00        \N      ~       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-17 23:09:40.385423+00        f       100     97      5825a180-2f4e-4ded-b759-7bc04256026e    2026-06-17 23:09:41.461807+00        \N      ~       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-17 23:20:40.759103+00        f       100     96      495f1b85-541f-4d89-acc3-4ca961cad60b    2026-06-17 23:20:42.053187+00        \N      ~       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc
42badcc9-7db5-4125-9856-2601fb357fba    2026-06-18 08:27:25.527748+00   2026-06-18 08:27:25.527755+00        f       5       5       513c6b1a-b372-4020-9482-069da141ea1d    2026-06-18 08:27:25.531476+00        \N      +       9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 98e0c8c7-248c-480d-a84b-04a8e4b8aade
54994bab-180e-49d6-8996-4624d3b65f08    2026-06-18 08:27:38.914387+00   2026-06-18 08:27:38.914393+00        f       4       4       996cc4b9-e40a-44fc-8d4c-3d0b7da64b07    2026-06-18 08:27:38.918363+00        \N      +       4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 98e0c8c7-248c-480d-a84b-04a8e4b8aade
2905a23c-7dd6-4d24-8f22-bee22193f14f    2026-06-18 08:27:59.397442+00   2026-06-18 08:27:59.39745+00 f       5       5       6e2b54a6-ec69-4736-ae00-a9d8cdea085a    2026-06-18 08:27:59.403728+00        \N      +       1206e226-e1c8-418e-bc4e-557a470e5328    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 98e0c8c7-248c-480d-a84b-04a8e4b8aade
2e78bd8c-6cd6-4b59-b9d2-153d568e3655    2026-06-18 08:28:24.657839+00   2026-06-18 08:28:24.657847+00        f       5       5       07b7e9aa-c7ee-4743-aba2-05d1421ac2b2    2026-06-18 08:28:24.663+00   \N      +       79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 98e0c8c7-248c-480d-a84b-04a8e4b8aade
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 08:28:42.780006+00        f       4       4       13ec2175-bed8-4e73-99df-32ce653132c0    2026-06-18 08:28:42.789585+00        \N      +       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 98e0c8c7-248c-480d-a84b-04a8e4b8aade
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-18 14:58:59.984013+00        f       100     95      be3ba61b-98e5-4077-9300-9cfc028f3da6    2026-06-18 14:58:59.985242+00        \N      ~       f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 14:59:13.084544+00        f       4       3       3d161e01-bc56-4128-a7f9-31608158d4c3    2026-06-18 14:59:13.085155+00        \N      ~       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 15:03:05.33829+00 f       4       2       6027da37-8674-4dcc-82fb-1e73da7df83e    2026-06-18 15:03:05.339065+00        \N      ~       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
2905a23c-7dd6-4d24-8f22-bee22193f14f    2026-06-18 08:27:59.397442+00   2026-06-18 15:05:05.740223+00        f       5       4       e9668c7c-4188-4c49-ac2c-c5b411730fe9    2026-06-18 15:05:05.74084+00 \N      ~       1206e226-e1c8-418e-bc4e-557a470e5328    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
2e78bd8c-6cd6-4b59-b9d2-153d568e3655    2026-06-18 08:28:24.657839+00   2026-06-18 15:20:22.418706+00        f       5       4       e1d9bda8-2934-45a2-af4c-7e7015b57cef    2026-06-18 15:20:22.419355+00        \N      ~       79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
42badcc9-7db5-4125-9856-2601fb357fba    2026-06-18 08:27:25.527748+00   2026-06-18 15:23:01.033002+00        f       5       4       9b1f18f6-bd60-4d74-b98e-c165fc86842b    2026-06-18 15:23:01.033818+00        \N      ~       9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 15:27:45.101172+00        f       4       1       2149ec47-520d-4077-9cf3-a75238f13704    2026-06-18 15:27:45.102422+00        \N      ~       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
54994bab-180e-49d6-8996-4624d3b65f08    2026-06-18 08:27:38.914387+00   2026-06-18 15:28:21.731555+00        f       4       3       35301f5e-e3f4-4f07-988d-44cb27add320    2026-06-18 15:28:21.732154+00        \N      ~       4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 15:43:06.290774+00        f       4       0       2c1a6a35-edd2-46a8-9bf6-f70a9ef2b860    2026-06-18 15:43:06.291515+00        \N      ~       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade
896d9782-aa13-4f36-abb6-767ad2e87285    2026-06-11 17:26:22.965998+00   2026-06-18 22:34:08.302824+00        f       16      15      6a987ab7-6742-42e2-afc6-e5d7f0a5b238    2026-06-18 22:34:08.303407+00        \N      ~       a048da9b-fb75-43ae-a6d7-eaa931fec707    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_historicalvente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_historicalvente (id, created_at, updated_at, is_deleted, conditionnement, quantite, history_id, history_date, history_change_reason, history_type, degustation_id, history_user_id, hotesse_id, produit_id, site_id, nom_client, type_vente) FROM stdin;
520cc50a-4081-4d17-a873-3115179eeb11    2026-06-11 18:48:31.361364+00   2026-06-11 18:48:31.361369+00        f       UNITE   3       2322303a-0e4d-4a0f-915a-d92ea696cb7f    2026-06-11 18:48:31.361958+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
c771c758-df0e-41f0-88dc-3680e54848bd    2026-06-11 18:48:31.364239+00   2026-06-11 18:48:31.364243+00        f       UNITE   1       51f56424-c2c4-431d-8588-87f3bfde6630    2026-06-11 18:48:31.364739+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
5c8e19f6-d2cf-4f16-a7c8-1a63c4c5c0ef    2026-06-11 18:49:02.492727+00   2026-06-11 18:49:02.492732+00        f       UNITE   3       01aaf7c2-dfb5-40ae-a928-f910e79fe5df    2026-06-11 18:49:02.493111+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
56e83a8d-9c28-4a21-8148-6c11d17d89a5    2026-06-11 18:49:02.494046+00   2026-06-11 18:49:02.494049+00        f       UNITE   1       5f0fa9f2-70a5-45ed-a6ec-067db832660a    2026-06-11 18:49:02.494381+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
4d5c533f-42fe-4392-a4e6-70078507e4e8    2026-06-11 19:11:42.99689+00    2026-06-11 19:11:42.996902+00        f       UNITE   3       4c6c2f31-5c06-4302-8055-9c7bd16ca7f1    2026-06-11 19:11:42.999198+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
b5e22231-432e-460b-ad82-8793d9b1f4a5    2026-06-11 19:11:43.002803+00   2026-06-11 19:11:43.002815+00        f       UNITE   1       d9d34483-6d65-4ad3-8fb2-862a5faa4330    2026-06-11 19:11:43.005517+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
c6ea0122-da69-420b-8d81-8ec9d2ba635e    2026-06-11 19:13:11.3704+00     2026-06-11 19:13:11.370405+00        f       UNITE   3       aef429e0-c61b-4450-b5d5-7c20634448b6    2026-06-11 19:13:11.372552+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Evan’s  NORMAL
d241cbf7-ff20-4c9e-b371-c1f8058647f1    2026-06-11 19:13:11.375398+00   2026-06-11 19:13:11.375403+00        f       UNITE   1       a96883eb-0f88-4a46-8f85-50f62cf90dbd    2026-06-11 19:13:11.377441+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Evan’s  PROMOTION
59e7fe50-dc12-4c77-bdf0-f155a5e3699e    2026-06-11 19:13:34.67204+00    2026-06-11 19:13:34.672048+00        f       UNITE   3       0e743a4f-9fe2-49d9-909f-c8e24acf80e1    2026-06-11 19:13:34.674264+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Irene   NORMAL
daba1f77-a4b8-400e-81d7-a31ae74b2030    2026-06-11 19:13:34.677611+00   2026-06-11 19:13:34.677619+00        f       UNITE   1       8f898534-f4a8-431c-b3be-6988a4a7ed69    2026-06-11 19:13:34.679992+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Irene   PROMOTION
b8d6a4d3-2fe6-45e7-af07-6abd05cbe450    2026-06-11 19:14:12.773287+00   2026-06-11 19:14:12.773292+00        f       UNITE   3       4d7e317d-0d68-45a3-9aa6-df2e8b4da721    2026-06-11 19:14:12.775518+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Frédéric        NORMAL
4dd35a18-fded-47ab-82b1-b55a6cc9f974    2026-06-11 19:14:12.778578+00   2026-06-11 19:14:12.778587+00        f       UNITE   1       03df1c65-da99-4bb8-87a2-75ab14520f08    2026-06-11 19:14:12.780703+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Frédéric        PROMOTION
af3e96d9-7873-4649-b75f-13f99950d5a9    2026-06-11 19:16:40.070765+00   2026-06-11 19:16:40.070771+00        f       UNITE   3       54247d41-8052-4679-8755-75f8ab3bd09b    2026-06-11 19:16:40.072896+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gislin  NORMAL
944466bb-ab7b-4abc-9d16-4028c04750e4    2026-06-11 19:16:40.075814+00   2026-06-11 19:16:40.075821+00        f       UNITE   1       c3246484-ad64-4443-a6b9-fe6b4f0a8391    2026-06-11 19:16:40.07797+00 \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gislin  PROMOTION
44dd7a8c-bbb0-421e-8e75-cd479331ebe0    2026-06-11 19:18:43.937074+00   2026-06-11 19:18:43.93708+00 f       UNITE   6       295cb9a3-e81a-44af-bc28-2c3ec871e268    2026-06-11 19:18:43.939236+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
346a69ad-25ad-4e8e-9169-0b9a86749dcb    2026-06-11 19:23:17.900816+00   2026-06-11 19:23:17.900822+00        f       UNITE   3       205df253-e97b-4e8c-b342-11ca0997b57a    2026-06-11 19:23:17.903122+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
5735a504-19e0-46b1-9e30-f1e23437ad7d    2026-06-11 19:23:17.905942+00   2026-06-11 19:23:17.905946+00        f       UNITE   1       977c0324-f08b-48b4-8d55-6545d73d1f67    2026-06-11 19:23:17.907998+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
425bdec9-f5d7-4579-be66-b77991e49d3a    2026-06-11 19:27:20.640777+00   2026-06-11 19:27:20.640781+00        f       UNITE   3       77d64920-0176-4c76-8f7f-f3c4c7fbed29    2026-06-11 19:27:20.643051+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Franck  NORMAL
8b0b9ff5-6d95-4d72-8f13-88fb03f684e0    2026-06-11 19:27:20.645723+00   2026-06-11 19:27:20.645728+00        f       UNITE   1       7e9d4fee-3f19-4aa5-a594-85600d681738    2026-06-11 19:27:20.647865+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Franck  PROMOTION
667afb09-6de8-4b28-a7da-384b4139be2c    2026-06-11 19:27:51.776251+00   2026-06-11 19:27:51.776257+00        f       UNITE   3       63c3e78e-c5f1-4f5f-95d6-fc007e27e04c    2026-06-11 19:27:51.77841+00 \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bertrand        NORMAL
7e1209ed-8327-4506-9eca-c3ab6e0476e2    2026-06-11 19:27:51.781339+00   2026-06-11 19:27:51.781344+00        f       UNITE   1       0cb32a82-f5da-415d-900f-c0a779167ed4    2026-06-11 19:27:51.783468+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bertrand        PROMOTION
fdf8be79-809b-4a57-8cae-e6a60640d229    2026-06-11 19:28:46.754389+00   2026-06-11 19:28:46.754396+00        f       UNITE   3       8d4f11f9-d5d5-4eb4-9813-a8c54106c843    2026-06-11 19:28:46.756748+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ruth    NORMAL
dac3ec30-66e4-4a74-9b60-b7bd2e569241    2026-06-11 19:28:46.759619+00   2026-06-11 19:28:46.759625+00        f       UNITE   1       9d455bd5-99e7-48f3-ad5f-1a318feb724d    2026-06-11 19:28:46.761733+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ruth    PROMOTION
559dda64-3076-46aa-91ac-6ac1debbc2a8    2026-06-11 19:29:52.924694+00   2026-06-11 19:29:52.924704+00        f       UNITE   3       3d102acc-4423-4b3a-bbfd-81276cae0002    2026-06-11 19:29:52.926911+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Irene   NORMAL
56fa2808-5a6b-41c8-8831-d64e39e188d5    2026-06-11 19:29:52.929914+00   2026-06-11 19:29:52.929924+00        f       UNITE   1       c2d4eaca-1940-4c2c-b347-653626a1afda    2026-06-11 19:29:52.932112+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Irene   PROMOTION
6617b321-e850-4018-be9a-5048c33e77d8    2026-06-11 19:41:58.072983+00   2026-06-11 19:41:58.073+00   f       UNITE   3       819cee0b-b5c2-4155-9e4f-76ed05f50d2d    2026-06-11 19:41:58.075435+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
c454ab2d-d24b-4f00-9250-c2eb855811ab    2026-06-11 19:41:58.079549+00   2026-06-11 19:41:58.079563+00        f       UNITE   1       c6dfdf59-7f7e-4f9d-8db9-5dc0e89937a3    2026-06-11 19:41:58.081883+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
0e90b980-3488-481c-8cb0-bfb8930241c4    2026-06-11 19:44:14.057874+00   2026-06-11 19:44:14.05788+00 f       UNITE   3       8c9a33d9-ce03-43be-b927-8e9416989200    2026-06-11 19:44:14.060188+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 André   NORMAL
da9febd6-d47d-4152-a6da-617051affa7d    2026-06-11 19:44:14.063146+00   2026-06-11 19:44:14.063152+00        f       UNITE   1       b2979b58-7355-45fd-93fd-cfd93f912298    2026-06-11 19:44:14.065275+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 André   PROMOTION
30d08b5a-d78a-420d-9b07-926fb097253a    2026-06-11 19:44:43.783881+00   2026-06-11 19:44:43.783887+00        f       UNITE   3       4f6c5908-66ec-4ee9-b1d1-83c5a48cacc2    2026-06-11 19:44:43.786002+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Patrick NORMAL
0bbf6fd2-a27f-4240-9f4e-f7847d665e04    2026-06-11 19:44:43.788917+00   2026-06-11 19:44:43.788923+00        f       UNITE   1       0c0314e5-afcf-4947-99ca-afb343aeb210    2026-06-11 19:44:43.793494+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Patrick PROMOTION
7540e07c-1e50-4a3f-80f2-f673b4acb6dc    2026-06-11 19:51:00.622647+00   2026-06-11 19:51:00.622653+00        f       UNITE   3       8fe7e3a6-f825-45b2-aa32-3517a342612d    2026-06-11 19:51:00.624915+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Norbert NORMAL
5aa5d6bf-41ff-4007-9a36-66d954d1b7ac    2026-06-11 19:51:00.62796+00    2026-06-11 19:51:00.627965+00        f       UNITE   1       846919c2-8c1f-4a13-8bf7-b5be14d36d11    2026-06-11 19:51:00.630268+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Norbert PROMOTION
ba9d7540-987f-4d90-8253-084094ae1931    2026-06-11 20:05:19.700081+00   2026-06-11 20:05:19.700087+00        f       UNITE   6       f6f4b4fc-9fbf-4741-9580-a5187d47f622    2026-06-11 20:05:19.702219+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Audray  NORMAL
3c2cb104-6e1e-4771-837a-12891ad4171e    2026-06-11 20:32:48.881458+00   2026-06-11 20:32:48.881482+00        f       UNITE   3       3815ac46-83e8-4919-a92b-de908f91350b    2026-06-11 20:32:48.883762+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Udain   NORMAL
840904c2-af90-4bbc-a2ac-1b38d094a2db    2026-06-11 20:32:48.886739+00   2026-06-11 20:32:48.886744+00        f       UNITE   1       cf139d19-966d-4a0e-868d-3de3734a446a    2026-06-11 20:32:48.890038+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Udain   PROMOTION
4eb8b5b9-21fa-4364-b0d1-151e8132d077    2026-06-11 20:36:10.560848+00   2026-06-11 20:36:10.560854+00        f       UNITE   3       b7bcf28a-808a-49f8-8625-5ad86154a027    2026-06-11 20:36:10.563119+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Kevin   NORMAL
81c284c3-e07d-4d62-a201-876b7537957a    2026-06-11 20:36:10.566137+00   2026-06-11 20:36:10.566143+00        f       UNITE   1       b11b19da-39e9-4bc5-b275-bea10063413b    2026-06-11 20:36:10.568307+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Kevin   PROMOTION
acf2eb9f-14bf-4566-ab37-fa22cf1eac11    2026-06-11 20:37:32.49035+00    2026-06-11 20:37:32.490354+00        f       UNITE   3       3ee70f9f-3912-4c14-bdcd-ff4bbe30ba30    2026-06-11 20:37:32.492506+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Elodie  NORMAL
2208382a-956b-4dc7-81a3-7d47c5e501a6    2026-06-11 20:37:32.495451+00   2026-06-11 20:37:32.495459+00        f       UNITE   1       062b613f-1216-4f47-be9b-baaaea63f1d7    2026-06-11 20:37:32.497596+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Elodie  PROMOTION
5aadc123-0d9e-4215-ac3f-faaf84303e2c    2026-06-11 20:41:53.519197+00   2026-06-11 20:41:53.519202+00        f       UNITE   3       573fe124-e96e-46b7-aa0c-fadad1a33eb8    2026-06-11 20:41:53.521292+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
5f22dfb0-c45d-46cb-905c-9253f2276029    2026-06-11 20:41:53.524036+00   2026-06-11 20:41:53.524046+00        f       UNITE   1       d70fba7b-c29c-450f-bd81-ee3756aa379d    2026-06-11 20:41:53.526142+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
8b791364-5efe-4426-a5e6-654becf113b3    2026-06-11 21:34:30.651454+00   2026-06-11 21:34:30.651462+00        f       UNITE   3       a5d12e83-883d-47d8-8597-8149a6db8a75    2026-06-11 21:34:30.653798+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gildas  NORMAL
e35e8e6f-0bd7-4190-9351-0a3de6ea6d26    2026-06-11 21:34:30.657048+00   2026-06-11 21:34:30.657057+00        f       UNITE   1       34de21fd-e592-4318-bbd3-a46a8dcb52e6    2026-06-11 21:34:30.659219+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gildas  PROMOTION
02fa035e-9390-4545-b8ba-a657b01ced04    2026-06-16 17:47:15.576003+00   2026-06-16 17:47:15.576008+00        f       UNITE   2       0ef3a40a-c866-4d6e-b5be-a23a036e744b    2026-06-16 17:47:15.580772+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Blanchard       NORMAL
a6b5b223-e22d-4cee-8a5c-df0fb631accf    2026-06-16 17:47:15.584322+00   2026-06-16 17:47:15.58433+00 f       UNITE   1       1696e4ca-2838-410c-a35b-ba61c7222571    2026-06-16 17:47:15.586942+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Blanchard       PROMOTION
dc2715a8-7dd4-4fb4-966a-d73eb4bc42c1    2026-06-16 17:47:46.308972+00   2026-06-16 17:47:46.308977+00        f       UNITE   2       419b1aa8-f651-4441-b3c1-309d057fd091    2026-06-16 17:47:46.311566+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Eric    NORMAL
dbeadaf8-3aad-43ad-ab97-26667f667767    2026-06-16 17:47:46.31513+00    2026-06-16 17:47:46.315136+00        f       UNITE   1       c8320fe7-3edf-4ad7-bcec-fd7e51086c09    2026-06-16 17:47:46.317656+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Eric    PROMOTION
da632d72-e675-4034-bb80-367d83df2d90    2026-06-16 17:53:48.11531+00    2026-06-16 17:53:48.115315+00        f       UNITE   2       6cab9af0-0bd8-4e23-95f0-daf21f0ab15d    2026-06-16 17:53:48.117963+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Jean    NORMAL
ff74f82f-9ee5-49a2-b399-c2f4e5d32773    2026-06-16 17:53:48.121114+00   2026-06-16 17:53:48.121119+00        f       UNITE   1       b1a4dfe2-0b67-4cfc-ab70-4a987e17cf53    2026-06-16 17:53:48.123701+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Jean    PROMOTION
1d9110e2-9a46-4600-b8a5-feca00c15427    2026-06-16 18:16:51.591293+00   2026-06-16 18:16:51.591298+00        f       UNITE   6       089b976b-0de9-4807-893f-f6cbd55a6aee    2026-06-16 18:16:51.59409+00 \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Pierre  NORMAL
50b9c4f9-478d-401a-b500-51dbb1d898bb    2026-06-16 18:27:52.181458+00   2026-06-16 18:27:52.181465+00        f       UNITE   3       ade3e2ce-2736-4d34-bf32-dfdac701fc78    2026-06-16 18:27:52.184101+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gwen    NORMAL
fb31e16a-b37c-4806-a3ff-13881aae71e2    2026-06-16 18:27:52.18739+00    2026-06-16 18:27:52.187396+00        f       UNITE   1       5180875c-1461-4fe8-97ad-a8d9dc7d2446    2026-06-16 18:27:52.18994+00 \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Gwen    PROMOTION
744f0df5-d5b4-4efe-ac70-d04c6a36423f    2026-06-16 18:31:17.321703+00   2026-06-16 18:31:17.321708+00        f       UNITE   6       d0c676fb-c4f7-4503-b714-297affebd784    2026-06-16 18:31:17.324295+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ivane   NORMAL
039c4d19-fcb7-4943-8648-45d6c4dd2273    2026-06-16 18:33:35.143931+00   2026-06-16 18:33:35.143937+00        f       UNITE   3       97754e57-94fe-483f-bc6f-5213d9b77384    2026-06-16 18:33:35.146786+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bryan   NORMAL
80a2fba6-4102-4893-801d-9cf64b24ec17    2026-06-16 18:33:35.15306+00    2026-06-16 18:33:35.153066+00        f       UNITE   1       da6cbbb5-a219-4e26-9258-1b4d4104c979    2026-06-16 18:33:35.155636+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bryan   PROMOTION
515dda89-6374-4358-9143-9a294cda188a    2026-06-16 18:36:16.20561+00    2026-06-16 18:36:16.205614+00        f       UNITE   2       632fbccc-30c6-4e85-87c5-cb71b213e77c    2026-06-16 18:36:16.208309+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Patrick NORMAL
35496861-1df7-4a23-9548-93c09b97505e    2026-06-16 18:36:16.215389+00   2026-06-16 18:36:16.215395+00        f       UNITE   1       1fcb9b40-867d-4b23-9dc4-f323aad004fd    2026-06-16 18:36:16.218428+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Patrick PROMOTION
50242060-93ac-471d-a32b-7f6546031108    2026-06-16 18:38:00.418886+00   2026-06-16 18:38:00.418891+00        f       UNITE   3       a7e14b1a-7301-4691-8759-7df5e788f5f9    2026-06-16 18:38:00.421401+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Benjamin        NORMAL
d1de6080-15ad-45b9-81cd-964c8f7bee15    2026-06-16 18:38:00.424734+00   2026-06-16 18:38:00.42474+00 f       UNITE   1       cc25791c-7d40-4794-9133-3e95617e6036    2026-06-16 18:38:00.427612+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Benjamin        PROMOTION
2f339b7b-6f3e-4307-8f11-9b3ab1f71932    2026-06-16 18:39:30.424473+00   2026-06-16 18:39:30.424479+00        f       UNITE   2       c5ec795a-bce4-459c-ac86-def8c0ab6681    2026-06-16 18:39:30.427503+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
0493b9c0-6d17-47fa-8d07-0bd1315e4571    2026-06-16 18:39:30.431094+00   2026-06-16 18:39:30.4311+00  f       UNITE   1       1e691a45-bed0-47cf-9b55-1efb5ce83d88    2026-06-16 18:39:30.433903+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
146de48e-e550-4998-b67f-11ae6a99a3cb    2026-06-16 18:39:41.021202+00   2026-06-16 18:39:41.021209+00        f       UNITE   2       08cea54e-a76b-4a7f-8acb-c7797653f6ae    2026-06-16 18:39:41.023773+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
e3dbcfd3-bb2b-4d70-af91-960475ed2e48    2026-06-16 18:39:41.027002+00   2026-06-16 18:39:41.027006+00        f       UNITE   1       726f8444-9c7c-404c-9cc2-1c8f0939e38e    2026-06-16 18:39:41.029604+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
fd20b805-3295-44c0-aaf9-511e74870146    2026-06-16 18:43:44.600986+00   2026-06-16 18:43:44.600993+00        f       UNITE   3       4d340a30-1922-4010-9a21-20b72257d38b    2026-06-16 18:43:44.603589+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Anicet  NORMAL
c8691816-3aa7-48df-a725-1fb537359c81    2026-06-16 18:43:44.606786+00   2026-06-16 18:43:44.606791+00        f       UNITE   1       66cd71f1-c4e6-480c-a85e-b0c66a5d9da9    2026-06-16 18:43:44.609308+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Anicet  PROMOTION
13864de5-4309-4ad0-9dc0-e380800a8cba    2026-06-16 18:43:57.79599+00    2026-06-16 18:43:57.795997+00        f       UNITE   3       5e9fa724-9934-4c43-ac4d-8a0b3668ccc2    2026-06-16 18:43:57.798616+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ali     NORMAL
55eef82b-b09b-4ef3-914d-e6077007f08f    2026-06-16 18:43:57.802113+00   2026-06-16 18:43:57.802119+00        f       UNITE   1       d37485b8-18e0-452b-89b5-7acf2ef261d7    2026-06-16 18:43:57.804698+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ali     PROMOTION
49c961af-0954-471b-9578-528a6aad427a    2026-06-16 18:46:10.300247+00   2026-06-16 18:46:10.300255+00        f       UNITE   6       4a9b2e49-397c-4dc9-b6c5-9de6fffe7414    2026-06-16 18:46:10.303114+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Johny   NORMAL
e734994e-dc27-4389-963e-bbac43af08ec    2026-06-16 18:46:14.900875+00   2026-06-16 18:46:14.900881+00        f       UNITE   2       1e445574-902b-427d-b7b6-0282a87e98fa    2026-06-16 18:46:14.903402+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Ange    NORMAL
a5b5095c-d37c-4bf7-b971-9c1408b66543    2026-06-16 18:46:14.906867+00   2026-06-16 18:46:14.906873+00        f       UNITE   1       f79c1a30-3d66-4bd4-9029-f3abb53bf0ca    2026-06-16 18:46:14.909617+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Ange    PROMOTION
5cb7919c-0526-426c-893a-f92898ace6f5    2026-06-16 18:47:20.023467+00   2026-06-16 18:47:20.023472+00        f       UNITE   3       604a6e48-23a3-4a30-a328-e815a7d67150    2026-06-16 18:47:20.027811+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Murphy  NORMAL
059f7178-f40b-4491-8e84-1add8f1b5579    2026-06-16 18:47:20.030929+00   2026-06-16 18:47:20.030934+00        f       UNITE   1       680f24f5-a690-4edf-8a35-74290324445f    2026-06-16 18:47:20.035523+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Murphy  PROMOTION
d459ffe9-50dc-4ff9-9f0b-abb923f55607    2026-06-16 18:51:32.465994+00   2026-06-16 18:51:32.466052+00        f       UNITE   6       714bf9cf-8d94-43a4-b301-caa9d6f4ab0c    2026-06-16 18:51:32.468766+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Leslie  NORMAL
e6cbdd5b-2f79-4c77-9f42-518e191bff70    2026-06-16 18:53:27.845838+00   2026-06-16 18:53:27.845846+00        f       UNITE   3       6fc764ed-2aba-4ab8-9025-06f4bba899e0    2026-06-16 18:53:27.848621+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Henry   NORMAL
83ec6e1f-cbdc-46e1-88ff-65b9c0a56f77    2026-06-16 18:53:27.852165+00   2026-06-16 18:53:27.852171+00        f       UNITE   1       336ba737-5c5d-401e-80b4-ff7dfaf784b6    2026-06-16 18:53:27.854739+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Henry   PROMOTION
f6091b9b-f98c-4c52-8545-25dd6081f57a    2026-06-16 18:54:54.483075+00   2026-06-16 18:54:54.483081+00        f       UNITE   3       3b120386-13a3-4559-a69e-d942775e5e7e    2026-06-16 18:54:54.489621+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Rodric  NORMAL
5a0c8cbd-d9e1-4123-9427-a46568d37fc8    2026-06-16 18:54:54.493254+00   2026-06-16 18:54:54.49326+00 f       UNITE   1       42949923-c34e-4265-a024-8519ec836259    2026-06-16 18:54:54.49579+00 \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2Rodric   PROMOTION
dd67605e-0d22-4139-92d6-e8729a4bf919    2026-06-16 18:55:26.30762+00    2026-06-16 18:55:26.307626+00        f       UNITE   2       7247769d-2f5e-452c-8c87-ebc6b197dea5    2026-06-16 18:55:26.310613+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
f8497482-e6bd-432e-884f-dee6186d0ffe    2026-06-16 18:55:26.313852+00   2026-06-16 18:55:26.313856+00        f       UNITE   1       d2dcbd71-6e50-478f-9072-0a82dae9deb6    2026-06-16 18:55:26.316445+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
1ba4a93e-3d29-4ed1-ab9c-d53fcb60b55c    2026-06-16 19:01:30.451907+00   2026-06-16 19:01:30.451913+00        f       UNITE   6       33ab4586-1926-4c5f-a96a-2fd2aeb39f33    2026-06-16 19:01:30.454728+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Fredy   NORMAL
c2adc7a8-a65b-4d08-8254-307003d185ff    2026-06-16 19:04:55.86712+00    2026-06-16 19:04:55.867127+00        f       UNITE   6       83006fa7-f2b7-49d7-9608-c57d98943455    2026-06-16 19:04:55.869928+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Fredy   NORMAL
d1934ece-c5c1-4d5e-a960-4b99135be803    2026-06-16 19:13:27.478772+00   2026-06-16 19:13:27.478777+00        f       UNITE   2       3a5b51a2-4f0d-40f1-9177-ed2e2e99ee80    2026-06-16 19:13:27.481545+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Amour   NORMAL
b941fdbf-6f8c-454a-9a82-387351c7d5e7    2026-06-16 19:13:27.484868+00   2026-06-16 19:13:27.484873+00        f       UNITE   1       a0ce9ee2-896a-49a9-af21-dd8829a69210    2026-06-16 19:13:27.487413+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Amour   PROMOTION
8467a772-5ef4-42cd-a0e2-d7c8e9db2393    2026-06-16 19:22:54.740982+00   2026-06-16 19:22:54.740988+00        f       UNITE   6       7b618f0d-8b55-48ec-a87b-5ac8ea21bb5e    2026-06-16 19:22:54.743815+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaelle NORMAL
0a3fac1b-cb62-43b4-af92-d85968ccb9e2    2026-06-16 19:27:50.748726+00   2026-06-16 19:27:50.748732+00        f       UNITE   3       13204128-2114-4e8e-9118-ac706feb80cd    2026-06-16 19:27:50.751249+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Christ  NORMAL
06c03287-a508-4800-b200-8cef6548a41f    2026-06-16 19:27:50.754917+00   2026-06-16 19:27:50.754922+00        f       UNITE   1       09994575-0b5a-4a72-aeed-9f7313ddac8b    2026-06-16 19:27:50.757474+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Christ  PROMOTION
616d578e-69fb-45b7-aa60-2c0e185cf705    2026-06-16 19:31:21.581851+00   2026-06-16 19:31:21.581856+00        f       UNITE   2       d0cc454d-7381-4cac-9149-f69fe6c0aff9    2026-06-16 19:31:21.58442+00 \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
27bfbd1b-e470-48e8-aa07-4847cee71644    2026-06-16 19:31:21.587517+00   2026-06-16 19:31:21.587523+00        f       UNITE   1       a0a3d442-aa28-4c05-94e3-51daeeb41528    2026-06-16 19:31:21.58998+00 \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
cce21d63-a6ae-4546-ad78-931012fd557b    2026-06-16 19:33:44.999858+00   2026-06-16 19:33:44.999863+00        f       UNITE   6       8e904ce7-01b5-4ccb-940f-7202244beb31    2026-06-16 19:33:45.002755+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Maria   NORMAL
a5daefa9-fbfe-4982-91e5-511a876d694f    2026-06-16 19:36:03.016922+00   2026-06-16 19:36:03.016927+00        f       UNITE   2       60a354d3-5e55-4dc5-a782-2314fac22ac9    2026-06-16 19:36:03.019761+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Scott   NORMAL
46b44e69-c867-4d63-9239-d48c28cafd75    2026-06-16 19:36:03.023022+00   2026-06-16 19:36:03.023027+00        f       UNITE   1       530a1ffd-3b19-4695-8303-cbd774d2c940    2026-06-16 19:36:03.025699+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Scott   PROMOTION
fbf6eb9c-2792-48cb-aaba-a40f2ac712af    2026-06-16 19:37:19.639401+00   2026-06-16 19:37:19.639408+00        f       UNITE   3       fa2aeff6-f714-47f8-bd74-e3bcaf4d8f82    2026-06-16 19:37:19.642122+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Edgard  NORMAL
18edb1b7-300b-4753-b31f-db8a7f3e3a04    2026-06-16 19:37:19.645703+00   2026-06-16 19:37:19.645711+00        f       UNITE   1       4af3bf14-9b1d-4522-ab26-320605cb3014    2026-06-16 19:37:19.648482+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Edgard  PROMOTION
dbb8e7d5-43a8-4253-b615-f44f3ffb8f40    2026-06-16 20:00:17.717095+00   2026-06-16 20:00:17.7171+00  f       UNITE   3       e3565e1d-23c7-48e7-a501-a14e238c599e    2026-06-16 20:00:17.719832+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Christ  NORMAL
f7cef3ff-cb54-4170-8426-9607e8c438fa    2026-06-16 20:00:17.723319+00   2026-06-16 20:00:17.723324+00        f       UNITE   1       97ff9736-b550-4b4f-a3cb-0db0b5f78752    2026-06-16 20:00:17.725904+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Christ  PROMOTION
1a43872b-a4fd-4892-a54c-7082580cfd16    2026-06-16 20:01:14.12184+00    2026-06-16 20:01:14.121846+00        f       UNITE   6       6106a150-7217-40b7-bb91-740c77b1ba05    2026-06-16 20:01:14.124901+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaelle NORMAL
4f632a24-84a4-40e1-b5ba-ab00f8ac2232    2026-06-16 20:04:39.890647+00   2026-06-16 20:04:39.890653+00        f       UNITE   3       1d60ea49-009d-4e5c-b61c-e6ce04b50854    2026-06-16 20:04:39.893231+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Willy   NORMAL
0a928616-eb33-42c7-96f5-eb1be4dd60eb    2026-06-16 20:04:39.896531+00   2026-06-16 20:04:39.896536+00        f       UNITE   1       423f6e33-52ae-4af4-bb2b-ad2929e556ea    2026-06-16 20:04:39.899055+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Willy   PROMOTION
8e369006-7ced-4d35-9b76-80de735a0c9f    2026-06-16 20:12:09.642563+00   2026-06-16 20:12:09.642568+00        f       UNITE   3       17570501-1481-4e00-9bfc-a1d1de90a215    2026-06-16 20:12:09.645237+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Mz      NORMAL
0e214ea2-b58c-437b-b54c-4e386283a787    2026-06-16 20:12:09.648614+00   2026-06-16 20:12:09.64862+00 f       UNITE   1       1204505c-7ba8-4b75-8f63-f9051b10f498    2026-06-16 20:12:09.651143+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Mz      PROMOTION
c03fb0b0-a363-4f83-ac9f-ba1c60b2b8ab    2026-06-16 20:12:28.94898+00    2026-06-16 20:12:28.948985+00        f       UNITE   2       f5766a72-32c9-4dc2-99ee-448fd494755f    2026-06-16 20:12:28.951623+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      NORMAL
73735462-5d51-49e0-94c3-517d17eec724    2026-06-16 20:12:28.956253+00   2026-06-16 20:12:28.956259+00        f       UNITE   1       7daec182-a710-42c0-9d58-000c109eecf3    2026-06-16 20:12:28.959003+00        \N      +       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    5aa0dfbb-0c17-4463-bc2b-80c560251dd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c \N      PROMOTION
344dd6e9-85ec-45d0-84ae-d6a62048c311    2026-06-16 20:12:30.886747+00   2026-06-16 20:12:30.886752+00        f       UNITE   3       2ec2f5e0-c6c1-4147-bcf7-39367df4b417    2026-06-16 20:12:30.889273+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Marie   NORMAL
0d3dd84e-1a69-40de-8697-e7c41e7409b5    2026-06-16 20:12:30.892422+00   2026-06-16 20:12:30.892438+00        f       UNITE   1       3ab909b8-9427-40ff-b7e4-bce5ab2348dc    2026-06-16 20:12:30.895086+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Marie   PROMOTION
b4487fdc-4e8c-4caf-9950-5d6e41f4c04d    2026-06-16 20:19:03.812075+00   2026-06-16 20:19:03.812082+00        f       UNITE   2       3b6659a5-9c63-4218-acad-4d6f512f69b6    2026-06-16 20:19:03.814772+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Alexandre       NORMAL
51c81e82-babf-4a4f-b72b-6f01b7e6919a    2026-06-16 20:19:03.818036+00   2026-06-16 20:19:03.818041+00        f       UNITE   1       fb188aa4-7f4f-4320-bd63-b71f78c864bc    2026-06-16 20:19:03.820804+00        \N      +       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Alexandre       PROMOTION
914be672-fa6c-4538-bee9-9cabd73da091    2026-06-16 20:24:55.539913+00   2026-06-16 20:24:55.539922+00        f       UNITE   6       79caad7e-1f18-4271-b223-22d06a4b57e1    2026-06-16 20:24:55.542506+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Dg      NORMAL
109475e0-aa36-44a4-9208-94f4339be2e1    2026-06-16 20:25:09.357874+00   2026-06-16 20:25:09.35788+00 f       UNITE   3       85afdfff-dcaa-4af9-a054-b027e1e03149    2026-06-16 20:25:09.360752+00        \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Randy   NORMAL
607f82cd-3f5d-48cb-b864-3294389e359b    2026-06-16 20:25:09.364496+00   2026-06-16 20:25:09.364502+00        f       UNITE   1       9cdba5db-9b38-4e07-9bcb-d0cf0c9f0d1a    2026-06-16 20:25:09.36712+00 \N      +       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 386e4259-2682-44ba-9073-59eb73919e88    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Randy   PROMOTION
817268f7-6e94-4cc4-b935-25eed87647fd    2026-06-16 20:28:42.808447+00   2026-06-16 20:28:42.808452+00        f       UNITE   6       897b133d-527e-41f7-95e5-251554e46075    2026-06-16 20:28:42.810991+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Lucapi  NORMAL
b43a9421-4516-455f-b065-6b2c66eb45cc    2026-06-16 20:28:46.49755+00    2026-06-16 20:28:46.497557+00        f       UNITE   6       8b8e7bf4-e690-4657-8385-c31f2136e53e    2026-06-16 20:28:46.500131+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Junior  NORMAL
97e4d9f3-15af-4167-be6c-2219bf1a1548    2026-06-16 20:31:49.409462+00   2026-06-16 20:31:49.409471+00        f       UNITE   6       c89c4368-b9cf-461f-8af4-f7f8af277f51    2026-06-16 20:31:49.412692+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Lucapy  NORMAL
2014ad67-d58c-4673-af75-a101aaaf7c1d    2026-06-16 21:22:43.216226+00   2026-06-16 21:22:43.21623+00 f       UNITE   2       255b6fbf-126b-4851-9d14-a3e0af5a6592    2026-06-16 21:22:43.218957+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Luc     NORMAL
1d9e9728-2d2b-46bd-ba1e-1b02ee6f4304    2026-06-16 21:22:43.222252+00   2026-06-16 21:22:43.222257+00        f       UNITE   1       feb19c24-edee-4fb9-a658-df281531d954    2026-06-16 21:22:43.22535+00 \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Luc     PROMOTION
78d88042-d8a5-415f-8346-d55ad8be0fdd    2026-06-16 22:07:41.81867+00    2026-06-16 22:07:41.818681+00        f       UNITE   3       6d31fdc4-6358-4257-a21e-d399a7fbbaa2    2026-06-16 22:07:41.824369+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Kévin   NORMAL
2818157c-d9fb-4aeb-9ac7-0abe2339afc5    2026-06-16 22:07:41.829066+00   2026-06-16 22:07:41.829077+00        f       UNITE   1       f347bff9-7617-4361-9342-51c7e61ed002    2026-06-16 22:07:41.831753+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Kévin   PROMOTION
96812102-c984-487d-a75b-4def6d12b80f    2026-06-16 22:08:13.165337+00   2026-06-16 22:08:13.165345+00        f       UNITE   3       06bd02fe-255b-4f38-a0bb-1d9aaf84367d    2026-06-16 22:08:13.168259+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Océane  NORMAL
c18b62e5-5eb7-4d41-b046-276cd552d3ab    2026-06-16 22:08:13.174433+00   2026-06-16 22:08:13.174441+00        f       UNITE   1       fb731fe7-a9d3-4f74-8259-21642acbfc60    2026-06-16 22:08:13.181125+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Océane  PROMOTION
8455bc17-3683-47c9-8ba7-e91c766e9583    2026-06-16 22:09:22.453017+00   2026-06-16 22:09:22.453028+00        f       UNITE   3       a55d605c-fe83-43dd-b35f-ab99f6ed6957    2026-06-16 22:09:22.455782+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bienvenue       NORMAL
15659efc-0436-4ed1-8eb6-dcd1de760dc2    2026-06-16 22:09:22.459463+00   2026-06-16 22:09:22.459471+00        f       UNITE   1       f9220486-9148-47cd-8bc9-365d4c2f4434    2026-06-16 22:09:22.462129+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bienvenue       PROMOTION
18c70d02-5f3e-4736-975e-259fd31bbb11    2026-06-17 16:26:20.46274+00    2026-06-17 16:26:20.462745+00        f       UNITE   3       07d8aceb-dc06-4486-8772-90cc5b7663ea    2026-06-17 16:26:20.465325+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bryan   NORMAL
1d60c755-ef6f-4eb3-bfed-6e1928a968de    2026-06-17 16:26:20.468506+00   2026-06-17 16:26:20.468512+00        f       UNITE   1       6fb2d03a-9524-4891-921b-4100370bcdd5    2026-06-17 16:26:20.471027+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Bryan   PROMOTION
f439d843-7abb-4f66-8b11-a4d1a24e9ea4    2026-06-17 16:52:32.028717+00   2026-06-17 16:52:32.028723+00        f       UNITE   3       f5d64198-fe16-472e-9b5b-d86894894f5a    2026-06-17 16:52:32.031356+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jean    NORMAL
74a4ef19-b79d-4a6f-85b0-f0b3aeafbf5a    2026-06-17 16:52:32.035206+00   2026-06-17 16:52:32.035211+00        f       UNITE   1       e3449693-4d2c-4dc6-b405-81fc9bd0afcd    2026-06-17 16:52:32.037804+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jean    PROMOTION
d1777681-fc71-4eb5-9c3b-5976c58d1a97    2026-06-17 16:55:27.706468+00   2026-06-17 16:55:27.706477+00        f       UNITE   3       7cb9bb55-31db-4ef5-a842-14019927a558    2026-06-17 16:55:27.709169+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jack    NORMAL
4e7d5e60-a044-4734-8ebb-b4258a9de6de    2026-06-17 16:55:27.712689+00   2026-06-17 16:55:27.712698+00        f       UNITE   1       e50efbb8-de97-49f1-8364-b1d2370236fb    2026-06-17 16:55:27.715311+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jack    PROMOTION
39524845-0a4c-4670-8150-bd1c1294e172    2026-06-17 16:58:25.690311+00   2026-06-17 16:58:25.69032+00 f       UNITE   3       5a87594f-8c72-43d1-af2c-8548b92e302b    2026-06-17 16:58:25.692974+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jacques NORMAL
95d4a2f3-dab0-4a5e-aa61-6b1646fdee29    2026-06-17 16:58:25.699054+00   2026-06-17 16:58:25.699061+00        f       UNITE   1       e0b0c700-0ae1-49c8-9913-1757ee33c33f    2026-06-17 16:58:25.701768+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Jacques PROMOTION
2afbaae4-14c1-4f0b-92bf-4b0ebb514a7e    2026-06-17 17:12:50.202212+00   2026-06-17 17:12:50.202221+00        f       UNITE   3       f97271e2-8387-45d0-b087-371844cb73db    2026-06-17 17:12:50.205386+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 David   NORMAL
7b7a4b06-d63a-4b5a-8448-33528f561fd0    2026-06-17 17:12:50.209318+00   2026-06-17 17:12:50.209324+00        f       UNITE   1       113183f7-9cc5-452c-8687-e14e7b6c7c24    2026-06-17 17:12:50.211902+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 David   PROMOTION
da1f30e6-9be1-4c19-81c0-0aa38b8d66b7    2026-06-17 18:21:20.024418+00   2026-06-17 18:21:20.024424+00        f       UNITE   6       c2b89298-4b24-48b0-a8f6-65475d52b9e9    2026-06-17 18:21:20.027054+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 386e4259-2682-44ba-9073-59eb73919e88    31ab0910-ff6c-4f50-abd1-6054890c27b2 Test    NORMAL
2f9e5d22-6c22-43d5-b11a-a74880e4d0fa    2026-06-17 18:28:07.952675+00   2026-06-17 18:28:07.952681+00        f       UNITE   2       00faaed2-03ab-441a-931d-2661ad78ae4b    2026-06-17 18:28:07.95551+00 \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Henry   NORMAL
019285b4-62aa-4eb7-9dcb-40f255c6d221    2026-06-17 18:28:07.959266+00   2026-06-17 18:28:07.959272+00        f       UNITE   1       a0a191d2-31dd-4484-b1d0-6457faa51c4d    2026-06-17 18:28:07.961818+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Henry   PROMOTION
90865e35-f1f0-4013-94ef-3aca6294ae9d    2026-06-17 18:43:48.823337+00   2026-06-17 18:43:48.823344+00        f       UNITE   3       707b484b-ef2f-473e-871d-8f9483a0fd24    2026-06-17 18:43:48.82592+00 \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Rikiel  NORMAL
4fd33d2a-521f-4e26-9ea6-2fb0e0ddee15    2026-06-17 18:43:48.829389+00   2026-06-17 18:43:48.829397+00        f       UNITE   1       89e86db0-3b5e-4228-9e23-81cf138243e3    2026-06-17 18:43:48.832076+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Rikiel  PROMOTION
cfa05760-a880-43ce-af51-a1972a627acb    2026-06-17 18:46:01.276602+00   2026-06-17 18:46:01.276611+00        f       UNITE   6       918fddc0-6b4a-4a1f-b068-c96a233876d6    2026-06-17 18:46:01.279256+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 FLEUR   NORMAL
8176aad9-952d-4896-97e7-d25a9cfbec5a    2026-06-17 18:48:48.807439+00   2026-06-17 18:48:48.807445+00        f       UNITE   2       1f79cf07-d866-482a-96f8-766e2c84c2b9    2026-06-17 18:48:48.809973+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Bertrand        NORMAL
0f34eea9-7f95-47ff-8f6e-5f5da8e4ed51    2026-06-17 18:48:48.813141+00   2026-06-17 18:48:48.813146+00        f       UNITE   1       a91927b0-215d-4295-a157-d387f8f94601    2026-06-17 18:48:48.815655+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Bertrand        PROMOTION
506c8d3b-efd3-45e4-b6a7-a7e380ef6102    2026-06-17 18:56:45.666683+00   2026-06-17 18:56:45.666688+00        f       UNITE   2       c7153b5b-1fa6-4256-bbca-6a2d0bfa0c62    2026-06-17 18:56:45.669246+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c 601     NORMAL
7d30c981-2d1f-4066-b835-7af7691556e6    2026-06-17 18:56:45.672561+00   2026-06-17 18:56:45.672566+00        f       UNITE   1       bbd01cfb-6ea9-4181-ba7a-51f7d4e80bff    2026-06-17 18:56:45.675119+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c 601     PROMOTION
abcf413b-0904-473f-af6a-32a38aefd655    2026-06-17 19:08:22.568721+00   2026-06-17 19:08:22.568725+00        f       UNITE   2       0e1bb839-9707-42f6-a5ef-7056a1d58513    2026-06-17 19:08:22.571359+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Rame    NORMAL
1c38b202-21ae-44cb-93c8-361b9559fe68    2026-06-17 19:08:22.574871+00   2026-06-17 19:08:22.57488+00 f       UNITE   1       03be655c-800c-4f2f-8e1f-6b82aa665c21    2026-06-17 19:08:22.577462+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Rame    PROMOTION
e67d1aec-07d4-409e-aa0b-b9eed0934bee    2026-06-17 19:44:24.405009+00   2026-06-17 19:44:24.405019+00        f       UNITE   6       fe7e56a6-4f19-41a4-af34-3a6d44514119    2026-06-17 19:44:24.407155+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaëlle NORMAL
3bf2e7e8-0e04-400d-b2f7-c5f86b94d4f5    2026-06-17 19:50:41.313692+00   2026-06-17 19:50:41.313701+00        f       UNITE   6       ee85c0c2-7c6f-43b2-a49c-031c2f4d9627    2026-06-17 19:50:41.316117+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 EKOMI EKOMI     NORMAL
5b9fac96-85cd-44dc-8a9b-d00940539bdf    2026-06-17 19:51:44.564084+00   2026-06-17 19:51:44.564089+00        f       UNITE   3       ab9b1d2b-d14d-4239-b089-734a65418cd9    2026-06-17 19:51:44.566085+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Nino    NORMAL
44fbe7ee-eac0-408a-830e-b2995d774b3d    2026-06-17 19:51:44.568817+00   2026-06-17 19:51:44.568821+00        f       UNITE   1       7a768ab4-0f84-4b44-ae52-aacb7bb3a6b9    2026-06-17 19:51:44.570737+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Nino    PROMOTION
5dd03000-2dbb-452a-b0b9-01e1d97cb7e1    2026-06-17 19:53:10.895248+00   2026-06-17 19:53:10.895254+00        f       UNITE   6       e2dc7e73-3c69-4890-8a29-90d6c0ae1692    2026-06-17 19:53:10.897347+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaëlle NORMAL
bc557eb5-d59c-4bca-99b6-40f5ec1a7a82    2026-06-17 19:55:05.861133+00   2026-06-17 19:55:05.861139+00        f       UNITE   6       89838a1e-9ad5-44ce-819a-1fc1dbe6da54    2026-06-17 19:55:05.863095+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 EKOMI EKOMI     NORMAL
fc8daa79-93bf-446b-8e52-773ddb314464    2026-06-17 19:56:32.485626+00   2026-06-17 19:56:32.485636+00        f       UNITE   3       7d16e7aa-164d-4782-9a62-a27f3688ac12    2026-06-17 19:56:32.487688+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Cavid   NORMAL
37cc7dae-c4a8-45c5-96a9-8b0089b91da7    2026-06-17 19:56:32.49054+00    2026-06-17 19:56:32.490545+00        f       UNITE   1       c4d1378c-8e1b-452d-9e40-a43e84c28581    2026-06-17 19:56:32.492456+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Cavid   PROMOTION
655ea378-7520-466f-863d-cd87e8a10f65    2026-06-17 20:08:46.168266+00   2026-06-17 20:08:46.168272+00        f       UNITE   6       5d14ffdb-8cdc-4e2b-900b-5412b54f73db    2026-06-17 20:08:46.173642+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 EKOMI EKOMI     NORMAL
580c248a-92ef-4e15-9ef4-456e3ce3127c    2026-06-17 20:13:50.356394+00   2026-06-17 20:13:50.3564+00  f       UNITE   6       2164fb47-332b-4bf0-a7b7-e7b35489ca0c    2026-06-17 20:13:50.3598+00  \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2Vincent  NORMAL
e24d9b58-2406-41e7-a1b4-39062c457faa    2026-06-17 20:20:10.567833+00   2026-06-17 20:20:10.567838+00        f       UNITE   2       81593e12-f12b-489c-917e-e020df23a3a0    2026-06-17 20:20:10.57274+00 \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Hugor   NORMAL
50c5f87f-bf13-4c6f-b9c9-a0919256f59b    2026-06-17 20:20:10.57642+00    2026-06-17 20:20:10.576424+00        f       UNITE   1       d4de32ca-1ac5-4a4b-b829-066a0a657402    2026-06-17 20:20:10.578501+00        \N      +       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Hugor   PROMOTION
c0973837-b6ac-43c7-b6e2-757dafde5ee6    2026-06-17 20:40:51.253953+00   2026-06-17 20:40:51.25396+00 f       UNITE   3       4d5319be-e6cd-4633-afaa-6068e7dfde6e    2026-06-17 20:40:51.256271+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Aricle  NORMAL
4f3f0f2a-615d-46c5-8548-52da44b3a267    2026-06-17 20:40:51.259179+00   2026-06-17 20:40:51.259184+00        f       UNITE   1       b5f9d780-2720-46dd-ac8e-b0bbb7663078    2026-06-17 20:40:51.261144+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Aricle  PROMOTION
6a6a0d01-b549-43c6-9c91-ca5cda86e998    2026-06-17 20:45:14.855137+00   2026-06-17 20:45:14.855142+00        f       UNITE   6       4c067543-6b32-435f-8338-797b0c1080e0    2026-06-17 20:45:14.857291+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 EKOMI EKOMI     NORMAL
7545f753-9aca-4310-a409-344b2306b236    2026-06-17 20:49:26.501074+00   2026-06-17 20:49:26.501079+00        f       UNITE   6       e4fc04fa-fac6-4c45-84db-e96ed568ae47    2026-06-17 20:49:26.503107+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Ekomi   NORMAL
152382c9-afdf-4ca6-9463-eb14bb3b8065    2026-06-17 20:52:49.661593+00   2026-06-17 20:52:49.6616+00  f       UNITE   6       840b11d6-5fa0-4d99-ac58-be7447bdd85e    2026-06-17 20:52:49.664179+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaeelle        NORMAL
ddd759fb-dfd9-4526-96f2-da08b7840b77    2026-06-17 21:04:44.623612+00   2026-06-17 21:04:44.623616+00        f       UNITE   3       49bc92f4-b58d-4434-9c4c-d080a2f814c7    2026-06-17 21:04:44.625882+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Tresor  NORMAL
cc507fe4-60dc-4259-913f-a0adfa8b8aad    2026-06-17 21:04:44.628905+00   2026-06-17 21:04:44.628911+00        f       UNITE   1       8be5aba9-6e1f-47b6-97b3-7152cd23cb5e    2026-06-17 21:04:44.637839+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Tresor  PROMOTION
c3279ce8-79bb-4d38-a499-f7b0383c5d99    2026-06-17 21:05:19.086725+00   2026-06-17 21:05:19.086732+00        f       UNITE   3       044cfea5-9169-4396-aaa4-e536aef29c14    2026-06-17 21:05:19.088818+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Elysee  NORMAL
caca6618-5922-4367-98b8-37794a6fc24b    2026-06-17 21:05:19.091545+00   2026-06-17 21:05:19.091549+00        f       UNITE   1       46fc2eaa-ba5b-4fe8-b105-eb70c1db44fa    2026-06-17 21:05:19.096955+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Elysee  PROMOTION
ae2eaa70-c2f5-4485-b1c7-9caa0b0f97dd    2026-06-17 21:07:22.486773+00   2026-06-17 21:07:22.486778+00        f       UNITE   6       0b8304c1-d1e7-4865-a7e6-b04402162efc    2026-06-17 21:07:22.488716+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Smaelle NORMAL
fd41d668-b19d-45ea-b724-25a2e7f0cdac    2026-06-17 21:07:43.344934+00   2026-06-17 21:07:43.344939+00        f       UNITE   2       04c25a3c-6cfc-41e6-b58d-44e005dd0a59    2026-06-17 21:07:43.347753+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Jull    NORMAL
ecc75727-daa5-431b-a44c-94bec885a141    2026-06-17 21:07:43.350429+00   2026-06-17 21:07:43.350434+00        f       UNITE   1       4beefe47-fcea-4897-a025-92aa547935cc    2026-06-17 21:07:43.352366+00        \N      +       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 386e4259-2682-44ba-9073-59eb73919e88    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c Jull    PROMOTION
30678a30-447f-4011-8260-c55b85d7e45a    2026-06-17 21:10:52.634056+00   2026-06-17 21:10:52.634066+00        f       UNITE   6       bb49f06a-79ab-43d3-ab04-75961c436833    2026-06-17 21:10:52.636117+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Owee    NORMAL
5e7d7503-a0e9-42ca-841f-753908c855a7    2026-06-17 21:12:13.661716+00   2026-06-17 21:12:13.661721+00        f       UNITE   6       338a731a-8cc0-424d-a816-cc752589d9b1    2026-06-17 21:12:13.663783+00        \N      +       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    77e0d595-d6da-4158-8f75-2e4f9947e156 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Osee    NORMAL
2e4cd165-d74d-4e11-a240-b9ae854244c2    2026-06-17 21:14:41.660994+00   2026-06-17 21:14:41.661+00   f       UNITE   6       b17e2bd8-9c04-4e99-b5ab-ddb7a1acb454    2026-06-17 21:14:41.663143+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Melvy’ne        NORMAL
8c9f0e3c-765a-4d72-ac64-230640e2e4af    2026-06-17 22:19:09.941892+00   2026-06-17 22:19:09.941901+00        f       UNITE   6       295af470-7b23-4324-bc25-3fe615b52c99    2026-06-17 22:19:09.943908+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 \N      NORMAL
8aaee4b4-d4a4-4295-88a6-c84da741d99e    2026-06-17 22:38:07.882802+00   2026-06-17 22:38:07.882808+00        f       UNITE   3       31ba77fc-49b3-4cd6-8fa9-335bb90bf39f    2026-06-17 22:38:07.891461+00        \N      +       55284e6c-eeae-4593-b69d-a9f24c5b7c4a    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 0ab94840-ff6c-44da-92b9-14bdef894bfc    \N      NORMAL
b55b7079-5560-46dc-8a6a-af7352ae7fba    2026-06-18 08:29:30.381595+00   2026-06-18 08:29:30.3816+00  f       UNITE   5       4533640d-3fb3-4fbb-a2bf-f14b7a730544    2026-06-18 08:29:30.383639+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      NORMAL
e83be0bc-5a7b-4de8-b36c-44608b35c8ab    2026-06-18 09:29:01.188762+00   2026-06-18 09:29:01.188768+00        f       UNITE   3       c4105b06-e03c-4588-84ab-e97b7241cc11    2026-06-18 09:29:01.190832+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Edmond  NORMAL
d2a93547-af14-4359-813d-3e2d5af07c93    2026-06-18 09:29:01.197722+00   2026-06-18 09:29:01.19773+00 f       UNITE   1       4ceb9dbb-5ea5-454e-a5b1-d3fde337c1f7    2026-06-18 09:29:01.199801+00        \N      +       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    9965cbe1-3a28-4c15-97c7-08bb532dbb8c ec5ccf6e-9f8b-4546-824a-e4c506a30559    31ab0910-ff6c-4f50-abd1-6054890c27b2 Edmond  PROMOTION
49404c56-3904-4000-a472-5b50c412197e    2026-06-18 11:13:25.011075+00   2026-06-18 11:13:25.01108+00 f       UNITE   5       ff485231-d374-49c0-aa79-955b96046aa0    2026-06-18 11:13:25.013374+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade SERGE   NORMAL
ca51c11a-27ac-4bba-8679-89eb5d950d4f    2026-06-18 11:25:31.267114+00   2026-06-18 11:25:31.267122+00        f       UNITE   3       d098c44a-3439-4f8d-a80f-b2205337fb2c    2026-06-18 11:25:31.269213+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade ef      NORMAL
51bde130-081e-4f16-8b65-c91bd3d37a42    2026-06-18 11:25:31.272585+00   2026-06-18 11:25:31.272593+00        f       UNITE   1       d5306fa5-a460-462e-8130-1a10d98439c2    2026-06-18 11:25:31.274814+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade ef      PROMOTION
20f098e6-f115-43eb-99c6-68fd885827bd    2026-06-18 11:26:08.825545+00   2026-06-18 11:26:08.825551+00        f       UNITE   3       4e1ef36f-4b61-4369-ba11-ab602fbe8706    2026-06-18 11:26:08.828891+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      NORMAL
ce65ad98-f43a-4bbd-8e75-fb136579c578    2026-06-18 11:26:08.833839+00   2026-06-18 11:26:08.833845+00        f       UNITE   1       26cc353e-9810-4411-b14a-5be87cdda3da    2026-06-18 11:26:08.837087+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      PROMOTION
461e2e2a-ae87-4c86-9bf6-6b9619680ee5    2026-06-18 11:30:07.6189+00     2026-06-18 11:30:07.618908+00        f       UNITE   5       4f567789-6dba-4a6c-94d2-ce9b60144de3    2026-06-18 11:30:07.620948+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade ZAZIE   NORMAL
4f3e4f23-298e-4e86-8791-2305a91ccf30    2026-06-18 11:31:06.839234+00   2026-06-18 11:31:06.839239+00        f       UNITE   5       2770f345-14b7-4358-910e-4f598a4a7f91    2026-06-18 11:31:06.84134+00 \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade ELODIE  NORMAL
e8ae81ef-f3dd-45c9-94f5-9e454346fb90    2026-06-18 11:31:59.223051+00   2026-06-18 11:31:59.223058+00        f       UNITE   3       6f289c9d-c0e9-4bec-b0d0-db6fd456b247    2026-06-18 11:31:59.225027+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade EVODIE  NORMAL
0b3e0ec6-e3d7-47f5-ad7f-2f3bc9706ada    2026-06-18 11:31:59.227629+00   2026-06-18 11:31:59.227634+00        f       UNITE   1       39b412fb-9efa-4699-9eba-f1d97896ade0    2026-06-18 11:31:59.229744+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade EVODIE  PROMOTION
a22265b7-db7d-4185-9792-d02e04fe7828    2026-06-18 11:32:29.253608+00   2026-06-18 11:32:29.253612+00        f       UNITE   5       e79153b1-6fd4-4aa9-b807-6297a0168f3a    2026-06-18 11:32:29.255776+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade ERREUR  NORMAL
da5fa350-c800-40fd-9bcc-14dd11696338    2026-06-18 13:22:58.108733+00   2026-06-18 13:22:58.10874+00 f       UNITE   5       5766abb4-73d9-4adb-9e1a-778a5d1c5800    2026-06-18 13:22:58.111826+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade ANGIE   NORMAL
59138a93-60ba-42d9-a8aa-823726eab995    2026-06-18 14:55:36.052363+00   2026-06-18 14:55:36.052368+00        f       UNITE   5       9f29c535-7312-40f3-a227-c15724ed396f    2026-06-18 14:55:36.056444+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade ANGIE   NORMAL
0b43f695-a28f-4202-9197-b698b0d9183b    2026-06-18 15:04:53.683284+00   2026-06-18 15:04:53.683288+00        f       UNITE   5       6b9630a8-b936-4052-94c7-3bcc4d67a840    2026-06-18 15:04:53.683836+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade Bissa   NORMAL
40b40bf8-913c-4fd0-9d46-e75540ceb250    2026-06-18 15:07:17.334309+00   2026-06-18 15:07:17.334314+00        f       UNITE   5       2ae38c83-d586-4781-89b2-e0a293b240d9    2026-06-18 15:07:17.334722+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade YVAN    NORMAL
8e0f9551-994d-4ea0-8c7a-0662274f6b96    2026-06-18 15:22:51.958513+00   2026-06-18 15:22:51.958519+00        f       UNITE   5       2e014cd2-b296-4c82-b64f-ae12ff423dff    2026-06-18 15:22:51.959025+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade SERGINE NORMAL
7ffe337d-0f82-4955-966b-1807f5ba60ca    2026-06-18 15:27:30.145236+00   2026-06-18 15:27:30.145241+00        f       UNITE   5       150c8fa1-11aa-4a6c-9b68-4363546ea195    2026-06-18 15:27:30.145824+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade PEPITE  NORMAL
7e4ed9bb-1411-4b3b-8f13-e0c98bfd2de4    2026-06-18 15:28:13.551452+00   2026-06-18 15:28:13.551456+00        f       UNITE   5       87b93175-bf22-433a-bec8-98e33db6700e    2026-06-18 15:28:13.551853+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    98e0c8c7-248c-480d-a84b-04a8e4b8aade AURELIEN        NORMAL
febd2414-f7d6-42f9-a20a-92ff7c170eff    2026-06-18 15:42:54.83254+00    2026-06-18 15:42:54.832546+00        f       UNITE   5       f9cb0eb1-80bf-4949-80d4-a3d0e78802e2    2026-06-18 15:42:54.833083+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade SABRINA NORMAL
fe761e71-ac75-4abe-ac1c-80a94033fb22    2026-06-18 16:20:18.289388+00   2026-06-18 16:20:18.289393+00        f       UNITE   5       119ad1f1-62e6-418c-af48-c3bcb28f0db9    2026-06-18 16:20:18.29006+00 \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    98e0c8c7-248c-480d-a84b-04a8e4b8aade \N      NORMAL
c15a8bae-18bb-4510-9730-f7fab52102a7    2026-06-18 17:11:45.486047+00   2026-06-18 17:11:45.486053+00        f       UNITE   2       18240f0d-cc52-4af0-a87c-f72f17b041da    2026-06-18 17:11:45.48645+00 \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ec5ccf6e-9f8b-4546-824a-e4c506a30559    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c JESSE   NORMAL
ade93d2f-8bb0-46b2-883e-f78f47d54952    2026-06-18 17:11:45.48774+00    2026-06-18 17:11:45.487747+00        f       UNITE   1       59e74286-a9d2-4a55-9bf1-73c128b64f88    2026-06-18 17:11:45.488213+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ec5ccf6e-9f8b-4546-824a-e4c506a30559    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c JESSE   PROMOTION
d9027558-84ae-4de9-9a0f-de4d8622f2fe    2026-06-18 22:33:55.288286+00   2026-06-18 22:33:55.288292+00        f       UNITE   6       4b523fa7-a19e-4c82-ae2a-d8a463440e7a    2026-06-18 22:33:55.288714+00        \N      +       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ec5ccf6e-9f8b-4546-824a-e4c506a30559    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3 Elisée  NORMAL
\.


--
-- Data for Name: btl_objectifsite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_objectifsite (id, created_at, updated_at, is_deleted, date, objectif_degustations, objectif_ventes, hotesse_id, site_id) FROM stdin;
e38bf9c4-eeb9-4781-82e8-2a79d24e0163    2026-06-11 17:22:00.816124+00   2026-06-11 17:22:00.816133+00        f       2026-06-11      0       30      90c7cf46-e3ba-4172-8391-7cc53b7379c88f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
f959e4d0-d73b-4d1b-8f8e-af9a3a6ff64f    2026-06-11 17:21:00.123695+00   2026-06-16 16:47:25.704085+00        f       2026-06-16      0       60      9965cbe1-3a28-4c15-97c7-08bb532dbb8c31ab0910-ff6c-4f50-abd1-6054890c27b2
4dd92f97-e85c-4e7f-9bb3-fd9d27d1825d    2026-06-11 17:24:21.137348+00   2026-06-16 16:47:43.076103+00        f       2026-06-16      0       60      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
5fb825fe-ece5-4e94-b73a-40195a6f3d31    2026-06-11 17:21:33.555368+00   2026-06-16 16:48:05.138964+00        f       2026-06-16      0       60      77e0d595-d6da-4158-8f75-2e4f9947e15631ab0910-ff6c-4f50-abd1-6054890c27b2
850f0971-7bc4-4158-b943-e49f4f951f62    2026-06-11 17:24:04.305268+00   2026-06-16 16:48:42.832007+00        f       2026-06-16      0       60      ed8ef46e-d6fc-421b-92ba-ca36a80cc6eab6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c210b1e6-b3f5-4257-91d3-5db1dd129a83    2026-06-11 17:23:44.975612+00   2026-06-16 16:48:55.976245+00        f       2026-06-16      0       30      c60f3a68-0f6d-41cf-ad40-ad1de2843bc18f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
6781feda-4cf7-4ee6-80c5-e301ef73471b    2026-06-11 17:22:29.618736+00   2026-06-16 16:49:06.93602+00 f       2026-06-16      0       30      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
d98c47fc-f171-456b-a392-368e89822816    2026-06-11 17:22:15.377611+00   2026-06-16 16:54:00.296181+00        f       2026-06-16      0       30      5aa0dfbb-0c17-4463-bc2b-80c560251dd48f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
\.


--
-- Data for Name: btl_produit; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_produit (id, created_at, updated_at, is_deleted, nom, description, prix_indicatif, entreprise_id, type_conditionnement) FROM stdin;
386e4259-2682-44ba-9073-59eb73919e88    2026-06-11 17:07:24.145733+00   2026-06-11 17:07:24.145741+00        f       Canettes        1920 unité(s)   \N      22898852-840c-4c01-9d7b-89a68ff5cce4 UNITE
ec5ccf6e-9f8b-4546-824a-e4c506a30559    2026-06-11 17:07:24.145738+00   2026-06-11 17:07:24.145743+00        f       Bouteilles      3840 unité(s)   \N      22898852-840c-4c01-9d7b-89a68ff5cce4 UNITE
ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae    2026-06-17 19:38:04.876926+00   2026-06-17 19:38:04.876937+00        f       produit 1       \N      \N      d871013c-b3b7-451c-af35-800d1ab9538cUNITE
218dbd2b-32ec-4ad7-b897-4198d5a0343c    2026-06-17 22:37:01.241756+00   2026-06-17 22:37:01.241766+00        f       TEST produit    \N      500.00  d871013c-b3b7-451c-af35-800d1ab9538cUNITE
\.


--
-- Data for Name: btl_promotion; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_promotion (id, created_at, updated_at, campagne_id, type_promotion, quantite_requise, recompense_description, is_active, is_deleted, quantite_offerte) FROM stdin;
7204f98c-c025-462b-9868-44570d752d95    2026-06-11 17:19:46.149661+00   2026-06-11 17:19:46.14967+00 d36107b8-f8fd-4250-a37b-2920a2e92199    OFFERT  3       1       t       f       1
5480ce9b-5b25-46d3-a729-04e09996c208    2026-06-11 17:19:46.152264+00   2026-06-11 17:19:46.152273+00        d36107b8-f8fd-4250-a37b-2920a2e92199    GAGNE   6       1       t       f   1
5faacc3f-4f81-4d03-b731-c2dcf907fc09    2026-06-16 08:15:54.127106+00   2026-06-16 18:59:55.308366+00        d36107b8-f8fd-4250-a37b-2920a2e92199    OFFERT  2       Radisson 2 achetés=1 offert  t       f       1
6aa014e0-3636-42c0-88c4-1fd0fe9b0fcf    2026-06-17 19:39:22.526814+00   2026-06-17 19:39:22.526823+00        1529df21-8811-4562-b88c-ac3652cf9010    GAGNE   5       2       t       f   1
9f9c7a4a-dd1d-4f80-bfd2-8644b5fb3943    2026-06-17 19:39:22.527226+00   2026-06-17 19:39:22.527237+00        1529df21-8811-4562-b88c-ac3652cf9010    OFFERT  2       1       t       f   1
74852258-0da9-48c7-aa02-9e03c703a2ee    2026-06-18 08:26:24.705645+00   2026-06-18 08:26:24.705656+00        aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    OFFERT  3       1       t       f   1
3c363b65-b203-4b67-9601-fe19caad9c52    2026-06-18 08:26:24.725375+00   2026-06-18 08:26:24.725385+00        aeab771d-5fd2-4ab9-9a9b-a29b38215fa4    GAGNE   5       1       t       f   1
\.


--
-- Data for Name: btl_promotion_goodies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_promotion_goodies (id, promotion_id, goodie_id) FROM stdin;
\.


--
-- Data for Name: btl_promotion_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_promotion_sites (id, promotion_id, site_id) FROM stdin;
1       5faacc3f-4f81-4d03-b731-c2dcf907fc09    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
\.


--
-- Data for Name: btl_rapportjournalier; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_rapportjournalier (id, created_at, updated_at, is_deleted, date, nb_degustations, nb_ventes, chiffre_affaires, email_envoye, hotesse_id, site_id, nb_goodies) FROM stdin;
9ae8d330-21a1-4218-bfec-82ea25ecd829    2026-06-17 22:10:49.928873+00   2026-06-17 22:10:49.929482+00        f       2026-06-17      14      22      0.00    t       77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
99623ed2-fc17-4e24-a7d9-618da3d592d6    2026-06-17 22:10:58.601977+00   2026-06-17 22:10:58.601999+00        f       2026-06-17      10      13      0.00    t       9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
4c299f3e-d766-458e-8b9b-63201592b062    2026-06-17 22:11:03.621537+00   2026-06-17 22:11:03.621589+00        f       2026-06-17      2       2       0.00    t       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
f73038a0-2835-493d-bb35-e93a65a14514    2026-06-17 22:11:08.198768+00   2026-06-17 22:11:08.198801+00        f       2026-06-17      0       0       0.00    t       5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
870555c8-9fa5-41c8-addc-2c6087602269    2026-06-17 22:11:13.549358+00   2026-06-17 22:11:13.549371+00        f       2026-06-17      3       6       0.00    t       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c016ab66-278d-4700-8c34-8025c3407a8c    2026-06-17 22:11:17.287456+00   2026-06-17 22:11:17.287463+00        f       2026-06-17      0       0       0.00    t       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
c7f65999-6e33-4f59-b377-5d0683104d44    2026-06-17 22:11:22.785827+00   2026-06-17 22:11:22.786092+00        f       2026-06-17      3       6       0.00    t       5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
e790c1d3-0570-4400-bb7c-fd15a8092aa0    2026-06-17 22:11:26.537895+00   2026-06-17 22:11:26.537924+00        f       2026-06-17      9       0       0.00    t       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
ba47c27c-fa4a-48ff-9a88-da112e01508b    2026-06-17 22:11:30.30041+00    2026-06-17 22:11:30.300426+00        f       2026-06-17      0       0       0.00    t       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
dd8d1c9a-0448-40dd-9db4-397d26895222    2026-06-18 22:15:21.533445+00   2026-06-18 22:15:21.53414+00 f       2026-06-18      17      20      31500.00        f       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98e0c8c7-248c-480d-a84b-04a8e4b8aade    8
c8b28705-4c02-42db-81e3-7ec6ffdf3773    2026-06-18 22:15:24.478587+00   2026-06-18 22:15:24.478605+00        f       2026-06-18      1       0       0.00    f       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 0ab94840-ff6c-44da-92b9-14bdef894bfc    3
d46007df-4cd1-47d4-bbdc-19a6ef76ec5a    2026-06-18 22:15:27.416596+00   2026-06-18 22:15:27.416767+00        f       2026-06-18      0       0       0.00    t       77e0d595-d6da-4158-8f75-2e4f9947e156 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
ee4c1026-2541-4091-abba-8fccc93fce86    2026-06-18 22:15:32.08833+00    2026-06-18 22:15:32.088352+00        f       2026-06-18      1       2       0.00    t       9965cbe1-3a28-4c15-97c7-08bb532dbb8c 31ab0910-ff6c-4f50-abd1-6054890c27b2    0
6f27dee2-25d8-4dea-92c0-1ad65971f9f2    2026-06-18 22:15:36.176239+00   2026-06-18 22:15:36.176255+00        f       2026-06-18      0       0       0.00    t       5aa0dfbb-0c17-4463-bc2b-80c560251dd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
77e6de86-e4ac-4a67-9633-dcbaa6df8b76    2026-06-18 22:15:40.245769+00   2026-06-18 22:15:40.245804+00        f       2026-06-18      0       0       0.00    t       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
bd1d8299-54c8-4b0e-96a1-b32d30f4ce4a    2026-06-18 22:15:44.279645+00   2026-06-18 22:15:44.279674+00        f       2026-06-18      0       0       0.00    t       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
b3e94fd8-6e40-4de1-829f-21d339afd06c    2026-06-18 22:15:48.347654+00   2026-06-18 22:15:48.347685+00        f       2026-06-18      0       0       0.00    t       5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
d97a5b94-4161-475b-9511-fdb435a287a1    2026-06-18 22:15:52.973274+00   2026-06-18 22:15:52.973312+00        f       2026-06-18      1       2       0.00    t       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    0
72abb6ec-1c41-47be-b1a0-9a2fe923685d    2026-06-18 22:15:56.968881+00   2026-06-18 22:15:56.968932+00        f       2026-06-18      0       0       0.00    t       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
51cd68cf-6423-47a6-b07f-e38cf8f323b4    2026-06-18 22:16:00.984777+00   2026-06-18 22:16:00.98479+00 f       2026-06-18      0       0       0.00    t       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    0
\.


--
-- Data for Name: btl_remoteuser; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_remoteuser (password, last_login, is_superuser, id, created_at, updated_at, is_deleted, username, email, name, role, is_active, is_staff, is_password_changed) FROM stdin;
pbkdf2_sha256$1200000$XGvEo2N3AzVLTNdr2N7hbD$5QTcTKBhj5zI78D313jbvH5W7SN5piq7OgQ0pXEl+4k=   \N       t       593539a8-ae3b-484f-ab10-ef6fd9e8e6ea    2026-06-11 17:05:00.012012+00   2026-06-11 17:05:00.012022+00        f       ceverineelisee36        ceverineelisee36@gmail.com  Ceverine Administrateur  t       t       t
pbkdf2_sha256$1200000$INHi6FHkOiS6aUI57UWPLn$efaeH0rAkboKjyIGcjSDzpDLW2oilCoz/c4gSWxcP2U=   \N       f       ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea    2026-06-11 17:16:16.785849+00   2026-06-11 17:35:30.975018+00        f       moundoubi20062004       moundoubi20062004@gmail.com Sara K.  Hotesse t       f       t
pbkdf2_sha256$1200000$AYlucWQ4ihfQkdBgyc33XM$uKMU65vYnH2Oqk0yH0/a5RnGKxT9T7NHFgWFjlSaTwc=   \N       f       31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    2026-06-11 17:11:36.126536+00   2026-06-11 17:35:55.61567+00 f       akengjennifer   akengjennifer@gmail.com Jennifer        Hotesse      t       f       t
pbkdf2_sha256$1200000$yQi2OTHA9mcELrwJH7awCP$dEADmXwTChbUu38lC4gIzcEuCSG3xRVWlcA12kurU+g=   \N       f       5aa0dfbb-0c17-4463-bc2b-80c560251dd4    2026-06-11 17:08:35.808019+00   2026-06-15 12:54:58.305065+00        f       belindantsele13 belindantsele13@gmail.com       Bélinda      Hotesse t       f       t
pbkdf2_sha256$1200000$hFhOMpuwn2Z5OpG2fP70fx$OpDQMiZ0ZDXeFC82HgGhct/ubf2ArHvSxTqS9sUf7MA=   \N       f       76c3d46e-ce06-4ecd-bf4f-6d55b14cda6a    2026-06-11 19:04:13.242646+00   2026-06-11 19:04:13.242656+00        f       yvan.nellsing   yvan.nellsing@gmail.com Yvan Sup    Superviseur      t       f       f
pbkdf2_sha256$1200000$I88lIEcVyNpKNeCyexpMPw$zq8C8WRZflEokgbjPlEz0zGozClg8kViTy934AdHYSU=   \N       f       77e0d595-d6da-4158-8f75-2e4f9947e156    2026-06-11 17:10:18.234838+00   2026-06-11 19:04:51.248144+00        f       mekinavenusia36 mekinavenusia36@gmail.com       Vénusia      Hotesse t       f       t
pbkdf2_sha256$1200000$Y7uJDUMdqftcWD4RyXJJyi$mMtta1ZjeguraLNqV/lAfYWXd00Krmk1iAxc7weUvOg=   \N       f       20c325a0-f0bf-43cd-8a37-3461b093037f    2026-06-15 12:53:57.141581+00   2026-06-15 12:56:44.043173+00        f       nguemadiamela   nguemadiamela@gmail.com Diamela NGUEMA       Superviseur     t       f       t
pbkdf2_sha256$1200000$lXm6nnGU0AWhVotMNlXwGE$QhPjkuD+dKjbHPNGeO62lsK7QEWMXqQlAQ4Ye/+ibPo=   \N       f       eeb0a090-3adb-44d4-9489-a0c1f968c4ab    2026-06-11 17:07:24.140232+00   2026-06-15 13:18:51.614598+00        f       valntoutoume    valntoutoume@yahoo.com  33 EXPORT   Entreprise       t       f       t
pbkdf2_sha256$1200000$XrMl1mBEdG0AUFUPOI0mr0$9YeCQYeh6WmR9eRgDxaFIYJowFKr8w0I5p49ih9c/DQ=   \N       f       08622270-639f-4e0c-8b9f-f869bdfbcca1    2026-06-11 19:05:54.59552+00    2026-06-11 19:35:27.385147+00        f       yvan.arsene     yvan.arsene@hotmail.com Yvan SUP 2  Superviseur      t       f       f
pbkdf2_sha256$1200000$nbXxLDLH7M9lcneHJT7WoJ$fhSKoyvINAIknQ/nKAmYgS/tqrBAMBgQiBnvUPhPAAI=   \N       f       832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    2026-06-11 17:09:22.998634+00   2026-06-11 19:36:40.820427+00        f       kibissof        kibissof@gmail.com      Frida La paixHotesse t       f       t
pbkdf2_sha256$1200000$InIxb9pV6OnoNjCymlLLE5$urCHBGnHgvLIH5Zfq8f6AK24K9ZZmBZFyY9ONUGkJfI=   \N       f       90c7cf46-e3ba-4172-8391-7cc53b7379c8    2026-06-11 17:08:04.255929+00   2026-06-15 20:47:31.313406+00        t       alixe_32        alixe_32@icloud.com     Alixe YolenneHotesse t       f       f
pbkdf2_sha256$1200000$jH2MfIZo8ghX7sHTATa6hg$uZPqBcI+Sqi3Z7t+N4jjYHrvb+LXKDqLtRiShwV8KmA=   \N       f       2dfa4f79-ee26-42bc-a654-374d3b5044d0    2026-06-11 17:07:47.621399+00   2026-06-11 20:21:08.597523+00        f       Suzie.loumba    Suzie.loumba@mhedia-ga.com      SuzieSuperviseur     t       f       f
pbkdf2_sha256$1200000$8daSaTr6N3s5Or9i6J3mei$h3V4r0GGPim0FscwN4rnQDmvyGlGihGWt7dKXaDecR0=   \N       t       a87adc7b-5da2-4c4a-b7d1-7edaeacd7146    2026-06-12 06:48:24.997199+00   2026-06-12 06:48:24.997207+00        f       maguy.ndzeng    maguy.ndzeng@mhedia-ga.com      Maguy Ndzeng Administrateur  t       t       t
pbkdf2_sha256$1200000$Mro4mejoyDZHYepUkCc7Yf$Y3Aaa2PF6j5FFFyVwdP52PF7bWS89EvFZq05KvkTEsw=   \N       f       ee696594-655c-4e8b-ac92-b7b9fc2015f9    2026-06-11 18:35:42.218152+00   2026-06-15 11:43:31.341332+00        f       eliseejean366   eliseejean366@gmail.com Ceverine    Entreprise       t       f       f
pbkdf2_sha256$1200000$cxRrKJ27Z57aHGPmuxwObr$LI1XnbqPU72Ms7Iz44NttwwQxWMHtAQ7U9Ue7bcyRDo=   \N       f       c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    2026-06-11 17:08:25.068408+00   2026-06-16 12:34:31.324591+00        f       annemedzomobame annemedzomobame@gmail.com       Anne Tiphanie        Hotesse t       f       t
pbkdf2_sha256$1200000$jicH7O0yxPm1J1mbM2OoND$XXHHeiJqeQEGJfUv99J47mUKeNCPi/85kM2nsd1rFp8=   \N       f       9965cbe1-3a28-4c15-97c7-08bb532dbb8c    2026-06-11 17:12:31.482529+00   2026-06-15 12:43:05.302431+00        f       sarahiboundou   sarahiboundou@gmail.com Sarah   Hotesse      t       f       t
pbkdf2_sha256$1200000$DwVsBaNmhtQCgyfPFZWGGV$xC3wHeR3tSoNKrT8iQsbaGhlcqqcgRi8O/DNbALnDYY=   \N       f       5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    2026-06-15 20:48:22.768724+00   2026-06-16 12:37:55.50777+00 f       alixe32 alixe32@icloud.com      Alixe Yolenne   Hotesse t   ft
pbkdf2_sha256$1200000$12PW14i96fDwdUD743MdSj$8Nyhun7ce1KKaZtP04zHYeWAnDVExaPqg+xaBz+fRVM=   \N       f       5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    2026-06-17 18:11:08.576039+00   2026-06-17 18:16:54.014228+00        f       bissafanny25    bissafanny25@gmail.com  CEVERINE    Hotesse  t       f       t
\.


--
-- Data for Name: btl_remoteuser_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_remoteuser_groups (id, remoteuser_id, group_id) FROM stdin;
\.


--
-- Data for Name: btl_remoteuser_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_remoteuser_user_permissions (id, remoteuser_id, permission_id) FROM stdin;
\.


--
-- Data for Name: btl_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_site (id, created_at, updated_at, is_deleted, nom, ville, emplacement_precis, campagne_id) FROM stdin;
8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    2026-06-11 17:19:43.313065+00   2026-06-11 17:19:43.313076+00        f       Radisson        Libreville      \N      d36107b8-f8fd-4250-a37b-2920a2e92199
31ab0910-ff6c-4f50-abd1-6054890c27b2    2026-06-11 17:19:43.321693+00   2026-06-11 17:19:43.321699+00        f       LMB     Libreville      \N      d36107b8-f8fd-4250-a37b-2920a2e92199
0ab94840-ff6c-44da-92b9-14bdef894bfc    2026-06-17 22:32:07.864989+00   2026-06-17 22:32:07.865001+00        f       TEST LBV        Libreville      test    885cf097-4539-44fb-9231-c023f5b0eb9d
98e0c8c7-248c-480d-a84b-04a8e4b8aade    2026-06-18 08:26:22.676434+00   2026-06-18 08:26:22.676445+00        f       LEON MBA        Libreville      \N      aeab771d-5fd2-4ab9-9a9b-a29b38215fa4
b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2026-06-11 17:19:43.312535+00   2026-06-18 17:14:11.5697+00  f       TIPS    Libreville      \N      d36107b8-f8fd-4250-a37b-2920a2e92199
\.


--
-- Data for Name: btl_site_hotesses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_site_hotesses (id, site_id, remoteuser_id) FROM stdin;
1       b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6
2       b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea
3       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    90c7cf46-e3ba-4172-8391-7cc53b7379c8
4       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    5aa0dfbb-0c17-4463-bc2b-80c560251dd4
5       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4
6       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    c60f3a68-0f6d-41cf-ad40-ad1de2843bc1
7       31ab0910-ff6c-4f50-abd1-6054890c27b2    77e0d595-d6da-4158-8f75-2e4f9947e156
8       31ab0910-ff6c-4f50-abd1-6054890c27b2    9965cbe1-3a28-4c15-97c7-08bb532dbb8c
9       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd
11      0ab94840-ff6c-44da-92b9-14bdef894bfc    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
12      98e0c8c7-248c-480d-a84b-04a8e4b8aade    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
16      b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25
\.


--
-- Data for Name: btl_site_superviseurs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_site_superviseurs (id, site_id, remoteuser_id) FROM stdin;
1       b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    2dfa4f79-ee26-42bc-a654-374d3b5044d0
2       8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    2dfa4f79-ee26-42bc-a654-374d3b5044d0
3       31ab0910-ff6c-4f50-abd1-6054890c27b2    2dfa4f79-ee26-42bc-a654-374d3b5044d0
\.


--
-- Data for Name: btl_siteproduitprix; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_siteproduitprix (id, created_at, updated_at, is_deleted, prix, produit_id, site_id) FROM stdin;
\.


--
-- Data for Name: btl_stockgoodiesite; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_stockgoodiesite (id, created_at, updated_at, is_deleted, quantite_initiale, quantite_restante, goodie_id, site_id) FROM stdin;
d9e39243-6595-4160-9e4d-fb4f57728249    2026-06-11 17:26:04.184652+00   2026-06-11 17:26:04.184658+00        f       50      50      96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    31ab0910-ff6c-4f50-abd1-6054890c27b2
80f0d804-b553-453f-bf17-062b79af716e    2026-06-11 17:26:04.188177+00   2026-06-11 17:26:04.18818+00 f       50      50      96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
0bfb9734-96f2-4316-ada2-a600b903375f    2026-06-11 17:26:04.190368+00   2026-06-11 17:26:04.190371+00        f       50      50      96b1835f-cbd7-40ec-8f04-7a935c2dbb3a    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
fcab4936-5773-4108-8922-723f5d035069    2026-06-11 17:26:22.96038+00    2026-06-11 17:26:22.960387+00        f       17      17      a048da9b-fb75-43ae-a6d7-eaa931fec707    31ab0910-ff6c-4f50-abd1-6054890c27b2
30ca8e0d-b31e-4558-a737-01ca4418076b    2026-06-11 17:26:22.963655+00   2026-06-11 17:26:22.963661+00        f       17      17      a048da9b-fb75-43ae-a6d7-eaa931fec707    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7e373a5c-f43f-43a0-bbf5-cd61977abd4e    2026-06-11 17:27:08.755768+00   2026-06-11 17:27:08.755773+00        f       34      34      0e24738c-8b11-4067-9dad-26da764874e5    31ab0910-ff6c-4f50-abd1-6054890c27b2
a8c7eebb-6b55-4d1a-8ef8-58f31ff89cc5    2026-06-11 17:27:08.759697+00   2026-06-11 17:27:08.759702+00        f       33      33      0e24738c-8b11-4067-9dad-26da764874e5    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
1b1463ef-db59-4a28-bbcf-836d8c06abb1    2026-06-11 17:27:08.762124+00   2026-06-11 17:27:08.762129+00        f       33      33      0e24738c-8b11-4067-9dad-26da764874e5    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
a99f0958-1c83-4050-971c-793b86668e12    2026-06-11 17:27:33.159945+00   2026-06-11 17:27:33.15995+00 f       17      17      589fd6ed-d9ae-4074-a6d6-980089926534    31ab0910-ff6c-4f50-abd1-6054890c27b2
d8049966-b1a3-4127-9d15-79078d2689e5    2026-06-11 17:27:33.162899+00   2026-06-11 17:27:33.162903+00        f       17      17      589fd6ed-d9ae-4074-a6d6-980089926534    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
65c21c7f-45c6-4b8c-afb1-11a6d0e73d9b    2026-06-11 17:27:33.165282+00   2026-06-11 17:27:33.165286+00        f       16      16      589fd6ed-d9ae-4074-a6d6-980089926534    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
ff63844c-4b45-4316-a0a5-3d3550373c2b    2026-06-11 17:27:58.800543+00   2026-06-11 17:27:58.800548+00        f       17      17      fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    31ab0910-ff6c-4f50-abd1-6054890c27b2
2d3c64f6-8196-4bb4-9d5d-48b3db2b3b75    2026-06-11 17:27:58.80305+00    2026-06-11 17:27:58.803054+00        f       17      17      fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
13dda31d-efff-47d3-9f05-6c9ad0f37a09    2026-06-11 17:27:58.805993+00   2026-06-11 17:27:58.805997+00        f       16      16      fa4e66b4-7c79-4924-8f1e-cd87f4b7e6c1    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
c21d94f5-eada-4970-8f40-f343160aeb6f    2026-06-17 15:53:49.001186+00   2026-06-17 15:53:49.001194+00        f       2       2       274c3e55-aef1-41ab-b641-a24560eae583    31ab0910-ff6c-4f50-abd1-6054890c27b2
7001f559-5e6b-45bf-800d-5bf674f53b19    2026-06-17 15:53:49.00985+00    2026-06-17 15:53:49.009856+00        f       1       1       274c3e55-aef1-41ab-b641-a24560eae583    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
791a08c0-def9-4117-84e4-8197abcff066    2026-06-17 15:53:49.017156+00   2026-06-17 15:53:49.017162+00        f       1       1       274c3e55-aef1-41ab-b641-a24560eae583    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
636518e6-d2f1-4573-9790-8b3b8fa3d277    2026-06-17 18:07:44.840835+00   2026-06-17 18:07:44.840842+00        f       2       2       acb45014-62c2-48be-80c8-234d3a416d35    31ab0910-ff6c-4f50-abd1-6054890c27b2
e45f4f99-6a2c-41aa-9972-e97e94ffce0f    2026-06-17 18:07:44.853159+00   2026-06-17 18:07:44.853166+00        f       1       1       acb45014-62c2-48be-80c8-234d3a416d35    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
66886e0f-6844-4e36-b3a5-474da0c732c7    2026-06-17 18:07:44.866244+00   2026-06-17 18:07:44.866249+00        f       1       1       acb45014-62c2-48be-80c8-234d3a416d35    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
fe49a41c-1646-48e2-9df4-6651ddc8bbee    2026-06-17 18:08:25.073062+00   2026-06-17 18:08:25.073071+00        f       2       2       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    31ab0910-ff6c-4f50-abd1-6054890c27b2
c8caea35-7a8a-4bcb-9594-23b3b3ed13f3    2026-06-17 18:08:25.081423+00   2026-06-17 18:08:25.081429+00        f       1       1       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
4f88b647-c910-47f5-92b0-5a2e509a78f8    2026-06-17 18:08:25.088834+00   2026-06-17 18:08:25.088839+00        f       1       1       d7ff3dfc-2ffd-4c1e-8d88-0c0a68fd5be6    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
176d8334-313a-4abe-8341-7146f2faeb34    2026-06-17 18:08:55.731191+00   2026-06-17 18:08:55.7312+00  f       2       2       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    31ab0910-ff6c-4f50-abd1-6054890c27b2
c0df26c5-98eb-4cb2-989d-40762e28e4b5    2026-06-17 18:08:55.739191+00   2026-06-17 18:08:55.739196+00        f       1       1       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
7df0f093-45ef-4604-ba5f-1b5e18a34ec2    2026-06-17 18:08:55.746846+00   2026-06-17 18:08:55.746851+00        f       1       1       ffbc7551-9ce3-4b63-aedf-4832fea3fd1a    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
96a37a47-593e-4507-86bf-ba78fd50871c    2026-06-17 18:10:16.494591+00   2026-06-17 18:10:16.494602+00        f       2       2       fa34a957-0c59-4526-a3af-db5d436a3e87    31ab0910-ff6c-4f50-abd1-6054890c27b2
d1ccfc78-e1d3-4e5c-b9f7-18f6dd34a354    2026-06-17 18:10:16.502833+00   2026-06-17 18:10:16.502839+00        f       1       1       fa34a957-0c59-4526-a3af-db5d436a3e87    8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c
bee147f5-6289-48dd-b039-c72bf931d257    2026-06-17 18:10:16.511018+00   2026-06-17 18:10:16.511023+00        f       1       1       fa34a957-0c59-4526-a3af-db5d436a3e87    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
59cdd674-817e-48de-a910-0e5d8f8bfaea    2026-06-17 22:38:41.541825+00   2026-06-18 14:58:59.984013+00        f       100     95      f12bd2c6-e34f-40fb-aa4d-1ff4674745d0    0ab94840-ff6c-44da-92b9-14bdef894bfc
2905a23c-7dd6-4d24-8f22-bee22193f14f    2026-06-18 08:27:59.397442+00   2026-06-18 15:05:05.740223+00        f       5       4       1206e226-e1c8-418e-bc4e-557a470e5328    98e0c8c7-248c-480d-a84b-04a8e4b8aade
2e78bd8c-6cd6-4b59-b9d2-153d568e3655    2026-06-18 08:28:24.657839+00   2026-06-18 15:20:22.418706+00        f       5       4       79b0d0ab-6fe1-41be-8dc0-2e719d62a3fb    98e0c8c7-248c-480d-a84b-04a8e4b8aade
42badcc9-7db5-4125-9856-2601fb357fba    2026-06-18 08:27:25.527748+00   2026-06-18 15:23:01.033002+00        f       5       4       9a1de406-4923-4a20-b26e-6c9e5f2cc1bb    98e0c8c7-248c-480d-a84b-04a8e4b8aade
54994bab-180e-49d6-8996-4624d3b65f08    2026-06-18 08:27:38.914387+00   2026-06-18 15:28:21.731555+00        f       4       3       4fcbd31e-4e1c-4f3d-8c20-1616105f14f1    98e0c8c7-248c-480d-a84b-04a8e4b8aade
918fc40e-0138-4f5c-8d56-e0f7cb047561    2026-06-18 08:28:42.779997+00   2026-06-18 15:43:06.290774+00        f       4       0       d98d180a-61bc-4955-9fb9-1c7c1ede7ac1    98e0c8c7-248c-480d-a84b-04a8e4b8aade
896d9782-aa13-4f36-abb6-767ad2e87285    2026-06-11 17:26:22.965998+00   2026-06-18 22:34:08.302824+00        f       16      15      a048da9b-fb75-43ae-a6d7-eaa931fec707    b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3
\.


--
-- Data for Name: btl_vente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.btl_vente (id, created_at, updated_at, is_deleted, conditionnement, quantite, degustation_id, hotesse_id, produit_id, site_id, type_vente, nom_client) FROM stdin;
520cc50a-4081-4d17-a873-3115179eeb11    2026-06-11 18:48:31.361364+00   2026-06-11 18:48:31.361369+00        f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
c771c758-df0e-41f0-88dc-3680e54848bd    2026-06-11 18:48:31.364239+00   2026-06-11 18:48:31.364243+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
5c8e19f6-d2cf-4f16-a7c8-1a63c4c5c0ef    2026-06-11 18:49:02.492727+00   2026-06-11 18:49:02.492732+00        f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
56e83a8d-9c28-4a21-8148-6c11d17d89a5    2026-06-11 18:49:02.494046+00   2026-06-11 18:49:02.494049+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
4d5c533f-42fe-4392-a4e6-70078507e4e8    2026-06-11 19:11:42.99689+00    2026-06-11 19:11:42.996902+00        f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
b5e22231-432e-460b-ad82-8793d9b1f4a5    2026-06-11 19:11:43.002803+00   2026-06-11 19:11:43.002815+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
c6ea0122-da69-420b-8d81-8ec9d2ba635e    2026-06-11 19:13:11.3704+00     2026-06-11 19:13:11.370405+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Evan’s
d241cbf7-ff20-4c9e-b371-c1f8058647f1    2026-06-11 19:13:11.375398+00   2026-06-11 19:13:11.375403+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Evan’s
59e7fe50-dc12-4c77-bdf0-f155a5e3699e    2026-06-11 19:13:34.67204+00    2026-06-11 19:13:34.672048+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Irene
daba1f77-a4b8-400e-81d7-a31ae74b2030    2026-06-11 19:13:34.677611+00   2026-06-11 19:13:34.677619+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Irene
b8d6a4d3-2fe6-45e7-af07-6abd05cbe450    2026-06-11 19:14:12.773287+00   2026-06-11 19:14:12.773292+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Frédéric
4dd35a18-fded-47ab-82b1-b55a6cc9f974    2026-06-11 19:14:12.778578+00   2026-06-11 19:14:12.778587+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Frédéric
af3e96d9-7873-4649-b75f-13f99950d5a9    2026-06-11 19:16:40.070765+00   2026-06-11 19:16:40.070771+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Gislin
944466bb-ab7b-4abc-9d16-4028c04750e4    2026-06-11 19:16:40.075814+00   2026-06-11 19:16:40.075821+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Gislin
44dd7a8c-bbb0-421e-8e75-cd479331ebe0    2026-06-11 19:18:43.937074+00   2026-06-11 19:18:43.93708+00 f       UNITE   6       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
346a69ad-25ad-4e8e-9169-0b9a86749dcb    2026-06-11 19:23:17.900816+00   2026-06-11 19:23:17.900822+00        f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
5735a504-19e0-46b1-9e30-f1e23437ad7d    2026-06-11 19:23:17.905942+00   2026-06-11 19:23:17.905946+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
425bdec9-f5d7-4579-be66-b77991e49d3a    2026-06-11 19:27:20.640777+00   2026-06-11 19:27:20.640781+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Franck
8b0b9ff5-6d95-4d72-8f13-88fb03f684e0    2026-06-11 19:27:20.645723+00   2026-06-11 19:27:20.645728+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Franck
667afb09-6de8-4b28-a7da-384b4139be2c    2026-06-11 19:27:51.776251+00   2026-06-11 19:27:51.776257+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Bertrand
7e1209ed-8327-4506-9eca-c3ab6e0476e2    2026-06-11 19:27:51.781339+00   2026-06-11 19:27:51.781344+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Bertrand
fdf8be79-809b-4a57-8cae-e6a60640d229    2026-06-11 19:28:46.754389+00   2026-06-11 19:28:46.754396+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Ruth
dac3ec30-66e4-4a74-9b60-b7bd2e569241    2026-06-11 19:28:46.759619+00   2026-06-11 19:28:46.759625+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Ruth
559dda64-3076-46aa-91ac-6ac1debbc2a8    2026-06-11 19:29:52.924694+00   2026-06-11 19:29:52.924704+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Irene
56fa2808-5a6b-41c8-8831-d64e39e188d5    2026-06-11 19:29:52.929914+00   2026-06-11 19:29:52.929924+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Irene
6617b321-e850-4018-be9a-5048c33e77d8    2026-06-11 19:41:58.072983+00   2026-06-11 19:41:58.073+00   f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
c454ab2d-d24b-4f00-9250-c2eb855811ab    2026-06-11 19:41:58.079549+00   2026-06-11 19:41:58.079563+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
0e90b980-3488-481c-8cb0-bfb8930241c4    2026-06-11 19:44:14.057874+00   2026-06-11 19:44:14.05788+00 f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  André
da9febd6-d47d-4152-a6da-617051affa7d    2026-06-11 19:44:14.063146+00   2026-06-11 19:44:14.063152+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       André
30d08b5a-d78a-420d-9b07-926fb097253a    2026-06-11 19:44:43.783881+00   2026-06-11 19:44:43.783887+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Patrick
0bbf6fd2-a27f-4240-9f4e-f7847d665e04    2026-06-11 19:44:43.788917+00   2026-06-11 19:44:43.788923+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Patrick
7540e07c-1e50-4a3f-80f2-f673b4acb6dc    2026-06-11 19:51:00.622647+00   2026-06-11 19:51:00.622653+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Norbert
5aa5d6bf-41ff-4007-9a36-66d954d1b7ac    2026-06-11 19:51:00.62796+00    2026-06-11 19:51:00.627965+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Norbert
ba9d7540-987f-4d90-8253-084094ae1931    2026-06-11 20:05:19.700081+00   2026-06-11 20:05:19.700087+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Audray
3c2cb104-6e1e-4771-837a-12891ad4171e    2026-06-11 20:32:48.881458+00   2026-06-11 20:32:48.881482+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Udain
840904c2-af90-4bbc-a2ac-1b38d094a2db    2026-06-11 20:32:48.886739+00   2026-06-11 20:32:48.886744+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Udain
4eb8b5b9-21fa-4364-b0d1-151e8132d077    2026-06-11 20:36:10.560848+00   2026-06-11 20:36:10.560854+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Kevin
81c284c3-e07d-4d62-a201-876b7537957a    2026-06-11 20:36:10.566137+00   2026-06-11 20:36:10.566143+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Kevin
acf2eb9f-14bf-4566-ab37-fa22cf1eac11    2026-06-11 20:37:32.49035+00    2026-06-11 20:37:32.490354+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Elodie
2208382a-956b-4dc7-81a3-7d47c5e501a6    2026-06-11 20:37:32.495451+00   2026-06-11 20:37:32.495459+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Elodie
5aadc123-0d9e-4215-ac3f-faaf84303e2c    2026-06-11 20:41:53.519197+00   2026-06-11 20:41:53.519202+00        f       UNITE   3       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
5f22dfb0-c45d-46cb-905c-9253f2276029    2026-06-11 20:41:53.524036+00   2026-06-11 20:41:53.524046+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
8b791364-5efe-4426-a5e6-654becf113b3    2026-06-11 21:34:30.651454+00   2026-06-11 21:34:30.651462+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Gildas
e35e8e6f-0bd7-4190-9351-0a3de6ea6d26    2026-06-11 21:34:30.657048+00   2026-06-11 21:34:30.657057+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Gildas
02fa035e-9390-4545-b8ba-a657b01ced04    2026-06-16 17:47:15.576003+00   2026-06-16 17:47:15.576008+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Blanchard
a6b5b223-e22d-4cee-8a5c-df0fb631accf    2026-06-16 17:47:15.584322+00   2026-06-16 17:47:15.58433+00 f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Blanchard
dc2715a8-7dd4-4fb4-966a-d73eb4bc42c1    2026-06-16 17:47:46.308972+00   2026-06-16 17:47:46.308977+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Eric
dbeadaf8-3aad-43ad-ab97-26667f667767    2026-06-16 17:47:46.31513+00    2026-06-16 17:47:46.315136+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Eric
da632d72-e675-4034-bb80-367d83df2d90    2026-06-16 17:53:48.11531+00    2026-06-16 17:53:48.115315+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Jean
ff74f82f-9ee5-49a2-b399-c2f4e5d32773    2026-06-16 17:53:48.121114+00   2026-06-16 17:53:48.121119+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Jean
1d9110e2-9a46-4600-b8a5-feca00c15427    2026-06-16 18:16:51.591293+00   2026-06-16 18:16:51.591298+00        f       UNITE   6       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Pierre
50b9c4f9-478d-401a-b500-51dbb1d898bb    2026-06-16 18:27:52.181458+00   2026-06-16 18:27:52.181465+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Gwen
fb31e16a-b37c-4806-a3ff-13881aae71e2    2026-06-16 18:27:52.18739+00    2026-06-16 18:27:52.187396+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Gwen
744f0df5-d5b4-4efe-ac70-d04c6a36423f    2026-06-16 18:31:17.321703+00   2026-06-16 18:31:17.321708+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Ivane
039c4d19-fcb7-4943-8648-45d6c4dd2273    2026-06-16 18:33:35.143931+00   2026-06-16 18:33:35.143937+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Bryan
80a2fba6-4102-4893-801d-9cf64b24ec17    2026-06-16 18:33:35.15306+00    2026-06-16 18:33:35.153066+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Bryan
515dda89-6374-4358-9143-9a294cda188a    2026-06-16 18:36:16.20561+00    2026-06-16 18:36:16.205614+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Patrick
35496861-1df7-4a23-9548-93c09b97505e    2026-06-16 18:36:16.215389+00   2026-06-16 18:36:16.215395+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Patrick
50242060-93ac-471d-a32b-7f6546031108    2026-06-16 18:38:00.418886+00   2026-06-16 18:38:00.418891+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Benjamin
d1de6080-15ad-45b9-81cd-964c8f7bee15    2026-06-16 18:38:00.424734+00   2026-06-16 18:38:00.42474+00 f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Benjamin
146de48e-e550-4998-b67f-11ae6a99a3cb    2026-06-16 18:39:41.021202+00   2026-06-16 18:39:41.021209+00        f       UNITE   2       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
e3dbcfd3-bb2b-4d70-af91-960475ed2e48    2026-06-16 18:39:41.027002+00   2026-06-16 18:39:41.027006+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
2f339b7b-6f3e-4307-8f11-9b3ab1f71932    2026-06-16 18:39:30.424473+00   2026-06-16 18:39:30.424479+00        f       UNITE   2       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
0493b9c0-6d17-47fa-8d07-0bd1315e4571    2026-06-16 18:39:30.431094+00   2026-06-16 18:39:30.4311+00  f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
fd20b805-3295-44c0-aaf9-511e74870146    2026-06-16 18:43:44.600986+00   2026-06-16 18:43:44.600993+00        f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Anicet
c8691816-3aa7-48df-a725-1fb537359c81    2026-06-16 18:43:44.606786+00   2026-06-16 18:43:44.606791+00        f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Anicet
13864de5-4309-4ad0-9dc0-e380800a8cba    2026-06-16 18:43:57.79599+00    2026-06-16 18:43:57.795997+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Ali
55eef82b-b09b-4ef3-914d-e6077007f08f    2026-06-16 18:43:57.802113+00   2026-06-16 18:43:57.802119+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Ali
49c961af-0954-471b-9578-528a6aad427a    2026-06-16 18:46:10.300247+00   2026-06-16 18:46:10.300255+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Johny
e734994e-dc27-4389-963e-bbac43af08ec    2026-06-16 18:46:14.900875+00   2026-06-16 18:46:14.900881+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Ange
a5b5095c-d37c-4bf7-b971-9c1408b66543    2026-06-16 18:46:14.906867+00   2026-06-16 18:46:14.906873+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Ange
5cb7919c-0526-426c-893a-f92898ace6f5    2026-06-16 18:47:20.023467+00   2026-06-16 18:47:20.023472+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Murphy
059f7178-f40b-4491-8e84-1add8f1b5579    2026-06-16 18:47:20.030929+00   2026-06-16 18:47:20.030934+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Murphy
d459ffe9-50dc-4ff9-9f0b-abb923f55607    2026-06-16 18:51:32.465994+00   2026-06-16 18:51:32.466052+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Leslie
e6cbdd5b-2f79-4c77-9f42-518e191bff70    2026-06-16 18:53:27.845838+00   2026-06-16 18:53:27.845846+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Henry
83ec6e1f-cbdc-46e1-88ff-65b9c0a56f77    2026-06-16 18:53:27.852165+00   2026-06-16 18:53:27.852171+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Henry
f6091b9b-f98c-4c52-8545-25dd6081f57a    2026-06-16 18:54:54.483075+00   2026-06-16 18:54:54.483081+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Rodric
5a0c8cbd-d9e1-4123-9427-a46568d37fc8    2026-06-16 18:54:54.493254+00   2026-06-16 18:54:54.49326+00 f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Rodric
dd67605e-0d22-4139-92d6-e8729a4bf919    2026-06-16 18:55:26.30762+00    2026-06-16 18:55:26.307626+00        f       UNITE   2       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
f8497482-e6bd-432e-884f-dee6186d0ffe    2026-06-16 18:55:26.313852+00   2026-06-16 18:55:26.313856+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
1ba4a93e-3d29-4ed1-ab9c-d53fcb60b55c    2026-06-16 19:01:30.451907+00   2026-06-16 19:01:30.451913+00        f       UNITE   6       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Fredy
c2adc7a8-a65b-4d08-8254-307003d185ff    2026-06-16 19:04:55.86712+00    2026-06-16 19:04:55.867127+00        f       UNITE   6       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Fredy
d1934ece-c5c1-4d5e-a960-4b99135be803    2026-06-16 19:13:27.478772+00   2026-06-16 19:13:27.478777+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Amour
b941fdbf-6f8c-454a-9a82-387351c7d5e7    2026-06-16 19:13:27.484868+00   2026-06-16 19:13:27.484873+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Amour
8467a772-5ef4-42cd-a0e2-d7c8e9db2393    2026-06-16 19:22:54.740982+00   2026-06-16 19:22:54.740988+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaelle
0a3fac1b-cb62-43b4-af92-d85968ccb9e2    2026-06-16 19:27:50.748726+00   2026-06-16 19:27:50.748732+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Christ
06c03287-a508-4800-b200-8cef6548a41f    2026-06-16 19:27:50.754917+00   2026-06-16 19:27:50.754922+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Christ
616d578e-69fb-45b7-aa60-2c0e185cf705    2026-06-16 19:31:21.581851+00   2026-06-16 19:31:21.581856+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
27bfbd1b-e470-48e8-aa07-4847cee71644    2026-06-16 19:31:21.587517+00   2026-06-16 19:31:21.587523+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
cce21d63-a6ae-4546-ad78-931012fd557b    2026-06-16 19:33:44.999858+00   2026-06-16 19:33:44.999863+00        f       UNITE   6       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Maria
a5daefa9-fbfe-4982-91e5-511a876d694f    2026-06-16 19:36:03.016922+00   2026-06-16 19:36:03.016927+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Scott
46b44e69-c867-4d63-9239-d48c28cafd75    2026-06-16 19:36:03.023022+00   2026-06-16 19:36:03.023027+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Scott
fbf6eb9c-2792-48cb-aaba-a40f2ac712af    2026-06-16 19:37:19.639401+00   2026-06-16 19:37:19.639408+00        f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Edgard
18edb1b7-300b-4753-b31f-db8a7f3e3a04    2026-06-16 19:37:19.645703+00   2026-06-16 19:37:19.645711+00        f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Edgard
dbb8e7d5-43a8-4253-b615-f44f3ffb8f40    2026-06-16 20:00:17.717095+00   2026-06-16 20:00:17.7171+00  f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Christ
f7cef3ff-cb54-4170-8426-9607e8c438fa    2026-06-16 20:00:17.723319+00   2026-06-16 20:00:17.723324+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Christ
1a43872b-a4fd-4892-a54c-7082580cfd16    2026-06-16 20:01:14.12184+00    2026-06-16 20:01:14.121846+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaelle
4f632a24-84a4-40e1-b5ba-ab00f8ac2232    2026-06-16 20:04:39.890647+00   2026-06-16 20:04:39.890653+00        f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Willy
0a928616-eb33-42c7-96f5-eb1be4dd60eb    2026-06-16 20:04:39.896531+00   2026-06-16 20:04:39.896536+00        f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Willy
8e369006-7ced-4d35-9b76-80de735a0c9f    2026-06-16 20:12:09.642563+00   2026-06-16 20:12:09.642568+00        f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Mz
0e214ea2-b58c-437b-b54c-4e386283a787    2026-06-16 20:12:09.648614+00   2026-06-16 20:12:09.64862+00 f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Mz
c03fb0b0-a363-4f83-ac9f-ba1c60b2b8ab    2026-06-16 20:12:28.94898+00    2026-06-16 20:12:28.948985+00        f       UNITE   2       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  \N
73735462-5d51-49e0-94c3-517d17eec724    2026-06-16 20:12:28.956253+00   2026-06-16 20:12:28.956259+00        f       UNITE   1       \N      5aa0dfbb-0c17-4463-bc2b-80c560251dd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       \N
344dd6e9-85ec-45d0-84ae-d6a62048c311    2026-06-16 20:12:30.886747+00   2026-06-16 20:12:30.886752+00        f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Marie
0d3dd84e-1a69-40de-8697-e7c41e7409b5    2026-06-16 20:12:30.892422+00   2026-06-16 20:12:30.892438+00        f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Marie
b4487fdc-4e8c-4caf-9950-5d6e41f4c04d    2026-06-16 20:19:03.812075+00   2026-06-16 20:19:03.812082+00        f       UNITE   2       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Alexandre
51c81e82-babf-4a4f-b72b-6f01b7e6919a    2026-06-16 20:19:03.818036+00   2026-06-16 20:19:03.818041+00        f       UNITE   1       \N      c60f3a68-0f6d-41cf-ad40-ad1de2843bc1    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Alexandre
914be672-fa6c-4538-bee9-9cabd73da091    2026-06-16 20:24:55.539913+00   2026-06-16 20:24:55.539922+00        f       UNITE   6       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Dg
109475e0-aa36-44a4-9208-94f4339be2e1    2026-06-16 20:25:09.357874+00   2026-06-16 20:25:09.35788+00 f       UNITE   3       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Randy
607f82cd-3f5d-48cb-b864-3294389e359b    2026-06-16 20:25:09.364496+00   2026-06-16 20:25:09.364502+00        f       UNITE   1       \N      31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6    386e4259-2682-44ba-9073-59eb73919e88 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    PROMOTION       Randy
817268f7-6e94-4cc4-b935-25eed87647fd    2026-06-16 20:28:42.808447+00   2026-06-16 20:28:42.808452+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Lucapi
b43a9421-4516-455f-b065-6b2c66eb45cc    2026-06-16 20:28:46.49755+00    2026-06-16 20:28:46.497557+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Junior
97e4d9f3-15af-4167-be6c-2219bf1a1548    2026-06-16 20:31:49.409462+00   2026-06-16 20:31:49.409471+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Lucapy
2014ad67-d58c-4673-af75-a101aaaf7c1d    2026-06-16 21:22:43.216226+00   2026-06-16 21:22:43.21623+00 f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Luc
1d9e9728-2d2b-46bd-ba1e-1b02ee6f4304    2026-06-16 21:22:43.222252+00   2026-06-16 21:22:43.222257+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Luc
78d88042-d8a5-415f-8346-d55ad8be0fdd    2026-06-16 22:07:41.81867+00    2026-06-16 22:07:41.818681+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Kévin
2818157c-d9fb-4aeb-9ac7-0abe2339afc5    2026-06-16 22:07:41.829066+00   2026-06-16 22:07:41.829077+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Kévin
96812102-c984-487d-a75b-4def6d12b80f    2026-06-16 22:08:13.165337+00   2026-06-16 22:08:13.165345+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Océane
c18b62e5-5eb7-4d41-b046-276cd552d3ab    2026-06-16 22:08:13.174433+00   2026-06-16 22:08:13.174441+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Océane
8455bc17-3683-47c9-8ba7-e91c766e9583    2026-06-16 22:09:22.453017+00   2026-06-16 22:09:22.453028+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Bienvenue
15659efc-0436-4ed1-8eb6-dcd1de760dc2    2026-06-16 22:09:22.459463+00   2026-06-16 22:09:22.459471+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Bienvenue
18c70d02-5f3e-4736-975e-259fd31bbb11    2026-06-17 16:26:20.46274+00    2026-06-17 16:26:20.462745+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Bryan
1d60c755-ef6f-4eb3-bfed-6e1928a968de    2026-06-17 16:26:20.468506+00   2026-06-17 16:26:20.468512+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Bryan
f439d843-7abb-4f66-8b11-a4d1a24e9ea4    2026-06-17 16:52:32.028717+00   2026-06-17 16:52:32.028723+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Jean
74a4ef19-b79d-4a6f-85b0-f0b3aeafbf5a    2026-06-17 16:52:32.035206+00   2026-06-17 16:52:32.035211+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Jean
d1777681-fc71-4eb5-9c3b-5976c58d1a97    2026-06-17 16:55:27.706468+00   2026-06-17 16:55:27.706477+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Jack
4e7d5e60-a044-4734-8ebb-b4258a9de6de    2026-06-17 16:55:27.712689+00   2026-06-17 16:55:27.712698+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Jack
39524845-0a4c-4670-8150-bd1c1294e172    2026-06-17 16:58:25.690311+00   2026-06-17 16:58:25.69032+00 f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Jacques
95d4a2f3-dab0-4a5e-aa61-6b1646fdee29    2026-06-17 16:58:25.699054+00   2026-06-17 16:58:25.699061+00        f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Jacques
2afbaae4-14c1-4f0b-92bf-4b0ebb514a7e    2026-06-17 17:12:50.202212+00   2026-06-17 17:12:50.202221+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  David
7b7a4b06-d63a-4b5a-8448-33528f561fd0    2026-06-17 17:12:50.209318+00   2026-06-17 17:12:50.209324+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       David
da1f30e6-9be1-4c19-81c0-0aa38b8d66b7    2026-06-17 18:21:20.024418+00   2026-06-17 18:21:20.024424+00        f       UNITE   6       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    386e4259-2682-44ba-9073-59eb73919e88 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Test
2f9e5d22-6c22-43d5-b11a-a74880e4d0fa    2026-06-17 18:28:07.952675+00   2026-06-17 18:28:07.952681+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Henry
019285b4-62aa-4eb7-9dcb-40f255c6d221    2026-06-17 18:28:07.959266+00   2026-06-17 18:28:07.959272+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Henry
90865e35-f1f0-4013-94ef-3aca6294ae9d    2026-06-17 18:43:48.823337+00   2026-06-17 18:43:48.823344+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Rikiel
4fd33d2a-521f-4e26-9ea6-2fb0e0ddee15    2026-06-17 18:43:48.829389+00   2026-06-17 18:43:48.829397+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Rikiel
cfa05760-a880-43ce-af51-a1972a627acb    2026-06-17 18:46:01.276602+00   2026-06-17 18:46:01.276611+00        f       UNITE   6       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  FLEUR
8176aad9-952d-4896-97e7-d25a9cfbec5a    2026-06-17 18:48:48.807439+00   2026-06-17 18:48:48.807445+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Bertrand
0f34eea9-7f95-47ff-8f6e-5f5da8e4ed51    2026-06-17 18:48:48.813141+00   2026-06-17 18:48:48.813146+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Bertrand
506c8d3b-efd3-45e4-b6a7-a7e380ef6102    2026-06-17 18:56:45.666683+00   2026-06-17 18:56:45.666688+00        f       UNITE   2       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  601
7d30c981-2d1f-4066-b835-7af7691556e6    2026-06-17 18:56:45.672561+00   2026-06-17 18:56:45.672566+00        f       UNITE   1       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       601
abcf413b-0904-473f-af6a-32a38aefd655    2026-06-17 19:08:22.568721+00   2026-06-17 19:08:22.568725+00        f       UNITE   2       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Rame
1c38b202-21ae-44cb-93c8-361b9559fe68    2026-06-17 19:08:22.574871+00   2026-06-17 19:08:22.57488+00 f       UNITE   1       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Rame
e67d1aec-07d4-409e-aa0b-b9eed0934bee    2026-06-17 19:44:24.405009+00   2026-06-17 19:44:24.405019+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaëlle
3bf2e7e8-0e04-400d-b2f7-c5f86b94d4f5    2026-06-17 19:50:41.313692+00   2026-06-17 19:50:41.313701+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  EKOMI EKOMI
5b9fac96-85cd-44dc-8a9b-d00940539bdf    2026-06-17 19:51:44.564084+00   2026-06-17 19:51:44.564089+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Nino
44fbe7ee-eac0-408a-830e-b2995d774b3d    2026-06-17 19:51:44.568817+00   2026-06-17 19:51:44.568821+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Nino
5dd03000-2dbb-452a-b0b9-01e1d97cb7e1    2026-06-17 19:53:10.895248+00   2026-06-17 19:53:10.895254+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaëlle
bc557eb5-d59c-4bca-99b6-40f5ec1a7a82    2026-06-17 19:55:05.861133+00   2026-06-17 19:55:05.861139+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  EKOMI EKOMI
fc8daa79-93bf-446b-8e52-773ddb314464    2026-06-17 19:56:32.485626+00   2026-06-17 19:56:32.485636+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Cavid
37cc7dae-c4a8-45c5-96a9-8b0089b91da7    2026-06-17 19:56:32.49054+00    2026-06-17 19:56:32.490545+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Cavid
655ea378-7520-466f-863d-cd87e8a10f65    2026-06-17 20:08:46.168266+00   2026-06-17 20:08:46.168272+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  EKOMI EKOMI
580c248a-92ef-4e15-9ef4-456e3ce3127c    2026-06-17 20:13:50.356394+00   2026-06-17 20:13:50.3564+00  f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Vincent
e24d9b58-2406-41e7-a1b4-39062c457faa    2026-06-17 20:20:10.567833+00   2026-06-17 20:20:10.567838+00        f       UNITE   2       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Hugor
50c5f87f-bf13-4c6f-b9c9-a0919256f59b    2026-06-17 20:20:10.57642+00    2026-06-17 20:20:10.576424+00        f       UNITE   1       \N      832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Hugor
c0973837-b6ac-43c7-b6e2-757dafde5ee6    2026-06-17 20:40:51.253953+00   2026-06-17 20:40:51.25396+00 f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Aricle
4f3f0f2a-615d-46c5-8548-52da44b3a267    2026-06-17 20:40:51.259179+00   2026-06-17 20:40:51.259184+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Aricle
6a6a0d01-b549-43c6-9c91-ca5cda86e998    2026-06-17 20:45:14.855137+00   2026-06-17 20:45:14.855142+00        f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  EKOMI EKOMI
7545f753-9aca-4310-a409-344b2306b236    2026-06-17 20:49:26.501074+00   2026-06-17 20:49:26.501079+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Ekomi
152382c9-afdf-4ca6-9463-eb14bb3b8065    2026-06-17 20:52:49.661593+00   2026-06-17 20:52:49.6616+00  f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaeelle
ddd759fb-dfd9-4526-96f2-da08b7840b77    2026-06-17 21:04:44.623612+00   2026-06-17 21:04:44.623616+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Tresor
cc507fe4-60dc-4259-913f-a0adfa8b8aad    2026-06-17 21:04:44.628905+00   2026-06-17 21:04:44.628911+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Tresor
c3279ce8-79bb-4d38-a499-f7b0383c5d99    2026-06-17 21:05:19.086725+00   2026-06-17 21:05:19.086732+00        f       UNITE   3       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Elysee
caca6618-5922-4367-98b8-37794a6fc24b    2026-06-17 21:05:19.091545+00   2026-06-17 21:05:19.091549+00        f       UNITE   1       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Elysee
ae2eaa70-c2f5-4485-b1c7-9caa0b0f97dd    2026-06-17 21:07:22.486773+00   2026-06-17 21:07:22.486778+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Smaelle
fd41d668-b19d-45ea-b724-25a2e7f0cdac    2026-06-17 21:07:43.344934+00   2026-06-17 21:07:43.344939+00        f       UNITE   2       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  Jull
ecc75727-daa5-431b-a44c-94bec885a141    2026-06-17 21:07:43.350429+00   2026-06-17 21:07:43.350434+00        f       UNITE   1       \N      5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd    386e4259-2682-44ba-9073-59eb73919e88 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       Jull
30678a30-447f-4011-8260-c55b85d7e45a    2026-06-17 21:10:52.634056+00   2026-06-17 21:10:52.634066+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Owee
5e7d7503-a0e9-42ca-841f-753908c855a7    2026-06-17 21:12:13.661716+00   2026-06-17 21:12:13.661721+00        f       UNITE   6       \N      77e0d595-d6da-4158-8f75-2e4f9947e156    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Osee
2e4cd165-d74d-4e11-a240-b9ae854244c2    2026-06-17 21:14:41.660994+00   2026-06-17 21:14:41.661+00   f       UNITE   6       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Melvy’ne
8c9f0e3c-765a-4d72-ac64-230640e2e4af    2026-06-17 22:19:09.941892+00   2026-06-17 22:19:09.941901+00        f       UNITE   6       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  \N
8aaee4b4-d4a4-4295-88a6-c84da741d99e    2026-06-17 22:38:07.882802+00   2026-06-17 22:38:07.882808+00        f       UNITE   3       55284e6c-eeae-4593-b69d-a9f24c5b7c4a    5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 218dbd2b-32ec-4ad7-b897-4198d5a0343c    0ab94840-ff6c-44da-92b9-14bdef894bfc NORMAL  \N
b55b7079-5560-46dc-8a6a-af7352ae7fba    2026-06-18 08:29:30.381595+00   2026-06-18 08:29:30.3816+00  f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  \N
e83be0bc-5a7b-4de8-b36c-44608b35c8ab    2026-06-18 09:29:01.188762+00   2026-06-18 09:29:01.188768+00        f       UNITE   3       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    NORMAL  Edmond
d2a93547-af14-4359-813d-3e2d5af07c93    2026-06-18 09:29:01.197722+00   2026-06-18 09:29:01.19773+00 f       UNITE   1       \N      9965cbe1-3a28-4c15-97c7-08bb532dbb8c    ec5ccf6e-9f8b-4546-824a-e4c506a30559 31ab0910-ff6c-4f50-abd1-6054890c27b2    PROMOTION       Edmond
49404c56-3904-4000-a472-5b50c412197e    2026-06-18 11:13:25.011075+00   2026-06-18 11:13:25.01108+00 f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  SERGE
ca51c11a-27ac-4bba-8679-89eb5d950d4f    2026-06-18 11:25:31.267114+00   2026-06-18 11:25:31.267122+00        f       UNITE   3       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ef
51bde130-081e-4f16-8b65-c91bd3d37a42    2026-06-18 11:25:31.272585+00   2026-06-18 11:25:31.272593+00        f       UNITE   1       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade    PROMOTION       ef
20f098e6-f115-43eb-99c6-68fd885827bd    2026-06-18 11:26:08.825545+00   2026-06-18 11:26:08.825551+00        f       UNITE   3       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  \N
ce65ad98-f43a-4bbd-8e75-fb136579c578    2026-06-18 11:26:08.833839+00   2026-06-18 11:26:08.833845+00        f       UNITE   1       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    PROMOTION       \N
461e2e2a-ae87-4c86-9bf6-6b9619680ee5    2026-06-18 11:30:07.6189+00     2026-06-18 11:30:07.618908+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ZAZIE
4f3e4f23-298e-4e86-8791-2305a91ccf30    2026-06-18 11:31:06.839234+00   2026-06-18 11:31:06.839239+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ELODIE
e8ae81ef-f3dd-45c9-94f5-9e454346fb90    2026-06-18 11:31:59.223051+00   2026-06-18 11:31:59.223058+00        f       UNITE   3       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  EVODIE
0b3e0ec6-e3d7-47f5-ad7f-2f3bc9706ada    2026-06-18 11:31:59.227629+00   2026-06-18 11:31:59.227634+00        f       UNITE   1       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    PROMOTION       EVODIE
a22265b7-db7d-4185-9792-d02e04fe7828    2026-06-18 11:32:29.253608+00   2026-06-18 11:32:29.253612+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ERREUR
da5fa350-c800-40fd-9bcc-14dd11696338    2026-06-18 13:22:58.108733+00   2026-06-18 13:22:58.10874+00 f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ANGIE
59138a93-60ba-42d9-a8aa-823726eab995    2026-06-18 14:55:36.052363+00   2026-06-18 14:55:36.052368+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  ANGIE
0b43f695-a28f-4202-9197-b698b0d9183b    2026-06-18 15:04:53.683284+00   2026-06-18 15:04:53.683288+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  Bissa
40b40bf8-913c-4fd0-9d46-e75540ceb250    2026-06-18 15:07:17.334309+00   2026-06-18 15:07:17.334314+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  YVAN
8e0f9551-994d-4ea0-8c7a-0662274f6b96    2026-06-18 15:22:51.958513+00   2026-06-18 15:22:51.958519+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  SERGINE
7ffe337d-0f82-4955-966b-1807f5ba60ca    2026-06-18 15:27:30.145236+00   2026-06-18 15:27:30.145241+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  PEPITE
7e4ed9bb-1411-4b3b-8f13-e0c98bfd2de4    2026-06-18 15:28:13.551452+00   2026-06-18 15:28:13.551456+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ce3c0e36-b0cf-4f3f-b4d3-2527709ad9ae 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  AURELIEN
febd2414-f7d6-42f9-a20a-92ff7c170eff    2026-06-18 15:42:54.83254+00    2026-06-18 15:42:54.832546+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  SABRINA
fe761e71-ac75-4abe-ac1c-80a94033fb22    2026-06-18 16:20:18.289388+00   2026-06-18 16:20:18.289393+00        f       UNITE   5       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    218dbd2b-32ec-4ad7-b897-4198d5a0343c 98e0c8c7-248c-480d-a84b-04a8e4b8aade    NORMAL  \N
c15a8bae-18bb-4510-9730-f7fab52102a7    2026-06-18 17:11:45.486047+00   2026-06-18 17:11:45.486053+00        f       UNITE   2       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    NORMAL  JESSE
ade93d2f-8bb0-46b2-883e-f78f47d54952    2026-06-18 17:11:45.48774+00    2026-06-18 17:11:45.487747+00        f       UNITE   1       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 8f19b68e-9f1e-478e-b8e2-2e4204cc2e2c    PROMOTION       JESSE
d9027558-84ae-4de9-9a0f-de4d8622f2fe    2026-06-18 22:33:55.288286+00   2026-06-18 22:33:55.288292+00        f       UNITE   6       \N      5da8d279-2b6f-4bcc-bc7b-94b7a9865f25    ec5ccf6e-9f8b-4546-824a-e4c506a30559 b6d939d3-a0aa-434d-a7a6-f7f7bac0e4f3    NORMAL  Elisée
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1       admin   logentry
2       auth    group
3       auth    permission
4       contenttypes    contenttype
5       sessions        session
6       token_blacklist blacklistedtoken
7       token_blacklist outstandingtoken
8       btl     campagne
9       btl     degustation
10      btl     entreprise
11      btl     gaingoodie
12      btl     gainpromotion
13      btl     goodie
14      btl     historicalcampagne
15      btl     historicaldegustation
16      btl     historicalentreprise
17      btl     historicalgaingoodie
18      btl     historicalgainpromotion
19      btl     historicalgoodie
20      btl     historicalobjectifsite
21      btl     historicalproduit
22      btl     historicalpromotion
23      btl     historicalrapportjournalier
24      btl     historicalremoteuser
25      btl     historicalsite
26      btl     historicalsiteproduitprix
27      btl     historicalstockgoodiesite
28      btl     historicalvente
29      btl     objectifsite
30      btl     produit
31      btl     promotion
32      btl     rapportjournalier
33      btl     remoteuser
34      btl     site
35      btl     siteproduitprix
36      btl     stockgoodiesite
37      btl     vente
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1       contenttypes    0001_initial    2026-06-11 17:04:29.705346+00
2       contenttypes    0002_remove_content_type_name   2026-06-11 17:04:29.710893+00
3       auth    0001_initial    2026-06-11 17:04:29.726582+00
4       auth    0002_alter_permission_name_max_length   2026-06-11 17:04:29.730623+00
5       auth    0003_alter_user_email_max_length        2026-06-11 17:04:29.733488+00
6       auth    0004_alter_user_username_opts   2026-06-11 17:04:29.736343+00
7       auth    0005_alter_user_last_login_null 2026-06-11 17:04:29.73909+00
8       auth    0006_require_contenttypes_0002  2026-06-11 17:04:29.740521+00
9       auth    0007_alter_validators_add_error_messages        2026-06-11 17:04:29.743097+00
10      auth    0008_alter_user_username_max_length     2026-06-11 17:04:29.745868+00
11      auth    0009_alter_user_last_name_max_length    2026-06-11 17:04:29.748555+00
12      auth    0010_alter_group_name_max_length        2026-06-11 17:04:29.753045+00
13      auth    0011_update_proxy_permissions   2026-06-11 17:04:29.755907+00
14      auth    0012_alter_user_first_name_max_length   2026-06-11 17:04:29.758592+00
15      btl     0001_initial    2026-06-11 17:04:30.035912+00
16      admin   0001_initial    2026-06-11 17:04:30.053588+00
17      admin   0002_logentry_remove_auto_add   2026-06-11 17:04:30.065273+00
18      admin   0003_logentry_add_action_flag_choices   2026-06-11 17:04:30.076257+00
19      btl     0002_alter_degustation_note_gout_and_more       2026-06-11 17:04:30.100832+00
20      btl     0003_entreprise_couleur_primaire_and_more       2026-06-11 17:04:30.167323+00
21      btl     0004_historicalproduit_type_conditionnement_and_more    2026-06-11 17:04:30.187112+00
22      btl     0005_alter_entreprise_logo_url  2026-06-11 17:04:30.255311+00
23      btl     0006_alter_historicalentreprise_logo_url        2026-06-11 17:04:30.266685+00
24      btl     0007_add_objectifs_campagne     2026-06-11 17:04:30.307634+00
25      btl     0008_add_type_campagne_recompense       2026-06-11 17:04:30.35142+00
26      btl     0009_add_promotion      2026-06-11 17:04:30.367371+00
27      btl     0010_alter_promotion_options_promotion_is_deleted_and_more      2026-06-11 17:04:30.413872+00
28      btl     0011_goodie_campagne_historicalgoodie_campagne_and_more 2026-06-11 17:04:30.598292+00
29      btl     0012_goodie_produit_associe_gaingoodie_produit  2026-06-11 17:04:30.668212+00
30      btl     0013_vente_type_vente   2026-06-11 17:04:30.684283+00
31      btl     0014_historicalgaingoodie_nom_client_and_more   2026-06-11 17:04:31.020027+00
32      sessions        0001_initial    2026-06-11 17:04:31.025935+00
33      token_blacklist 0001_initial    2026-06-11 17:04:31.071366+00
34      token_blacklist 0002_outstandingtoken_jti_hex   2026-06-11 17:04:31.089359+00
35      token_blacklist 0003_auto_20171017_2007 2026-06-11 17:04:31.114163+00
36      token_blacklist 0004_auto_20171017_2013 2026-06-11 17:04:31.135001+00
37      token_blacklist 0005_remove_outstandingtoken_jti        2026-06-11 17:04:31.226207+00
38      token_blacklist 0006_auto_20171017_2113 2026-06-11 17:04:31.246451+00
39      token_blacklist 0007_auto_20171017_2214 2026-06-11 17:04:31.288693+00
40      token_blacklist 0008_migrate_to_bigautofield    2026-06-11 17:04:31.3214+00
41      token_blacklist 0010_fix_migrate_to_bigautofield        2026-06-11 17:04:31.344528+00
42      token_blacklist 0011_linearizes_history 2026-06-11 17:04:31.346378+00
43      token_blacklist 0012_alter_outstandingtoken_user        2026-06-11 17:04:31.364097+00
44      token_blacklist 0013_alter_blacklistedtoken_options_and_more    2026-06-11 17:04:31.382223+00
45      btl     0015_rapportjournalier_nb_goodies_and_more      2026-06-15 22:57:56.410869+00
46      btl     0016_alter_historicalrapportjournalier_nb_goodies       2026-06-15 22:57:56.443817+00
47      btl     0017_promotion_sites    2026-06-15 22:57:56.518614+00
48      btl     0018_alter_historicalrapportjournalier_nb_goodies       2026-06-15 22:57:56.549689+00
49      btl     0019_historicalpromotion_quantite_offerte_and_more      2026-06-16 07:44:22.677298+00
50      btl     0019_fix_gaingoodie_unique_constraint   2026-06-17 19:35:36.154522+00
51      btl     0020_promotion_goodies  2026-06-17 19:35:36.207801+00
52      btl     0021_promotion_quantite_offerte 2026-06-17 19:35:36.286536+00
53      btl     0022_historicalpromotion_quantite_offerte       2026-06-17 19:35:36.342564+00
54      btl     0023_alter_gaingoodie_unique_together_and_more  2026-06-17 19:35:36.465003+00
55      btl     0024_alter_gaingoodie_unique_together_and_more  2026-06-17 19:35:36.493882+00
56      btl     0025_historicalpromotion_quantite_offerte_and_more      2026-06-17 19:35:36.524641+00
57      btl     0026_merge_migration_conflicts  2026-06-17 19:35:36.559331+00
58      btl     0020_gaingoodie_hotesse_historicalgaingoodie_hotesse    2026-06-18 00:29:11.025102+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: token_blacklist_blacklistedtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_blacklistedtoken (id, blacklisted_at, token_id) FROM stdin;
1       2026-06-11 17:04:40.905202+00   1
2       2026-06-11 17:28:54.016038+00   2
3       2026-06-11 17:31:21.250238+00   3
4       2026-06-11 19:08:48.102406+00   10
5       2026-06-12 17:20:55.748295+00   18
6       2026-06-14 09:42:05.470181+00   19
7       2026-06-15 09:40:56.553204+00   31
8       2026-06-15 11:38:48.223756+00   30
9       2026-06-15 12:39:45.281186+00   8
10      2026-06-15 12:53:33.217649+00   38
11      2026-06-15 13:12:43.748136+00   35
12      2026-06-15 13:33:11.305482+00   43
13      2026-06-15 16:12:04.227155+00   42
14      2026-06-16 07:35:51.439404+00   47
15      2026-06-16 12:36:40.572812+00   39
16      2026-06-16 12:45:19.211892+00   54
17      2026-06-16 12:45:36.160274+00   40
18      2026-06-16 18:09:59.681292+00   61
19      2026-06-16 18:12:20.630413+00   9
20      2026-06-16 18:15:13.785725+00   65
21      2026-06-16 18:59:55.462332+00   66
23      2026-06-16 19:27:55.907174+00   67
24      2026-06-17 11:24:18.417546+00   59
25      2026-06-17 11:56:37.864167+00   79
26      2026-06-17 14:31:14.712658+00   81
27      2026-06-17 16:02:43.844758+00   82
28      2026-06-17 17:31:16.819978+00   91
29      2026-06-17 18:11:20.747062+00   97
30      2026-06-17 18:16:59.597756+00   98
31      2026-06-17 18:18:26.410916+00   99
32      2026-06-17 18:23:50.112502+00   100
33      2026-06-17 19:37:21.302412+00   102
34      2026-06-17 19:51:43.508556+00   68
35      2026-06-17 22:11:34.511842+00   87
36      2026-06-17 22:42:14.446581+00   104
37      2026-06-17 22:42:35.349135+00   115
38      2026-06-17 23:58:35.839515+00   117
39      2026-06-18 06:50:13.245421+00   116
40      2026-06-18 06:56:33.424818+00   120
41      2026-06-18 08:28:52.64325+00    121
42      2026-06-18 08:30:39.153102+00   122
43      2026-06-18 10:23:58.257543+00   90
44      2026-06-18 11:12:39.784542+00   123
45      2026-06-18 11:17:44.839882+00   127
46      2026-06-18 11:32:52.024048+00   126
47      2026-06-18 13:22:11.975395+00   132
48      2026-06-18 13:24:58.5887+00     128
49      2026-06-18 13:25:10.469908+00   129
50      2026-06-18 14:55:02.197475+00   133
51      2026-06-18 15:03:16.926276+00   136
52      2026-06-18 15:04:22.394274+00   137
53      2026-06-18 15:05:12.705195+00   138
54      2026-06-18 15:06:47.477944+00   139
55      2026-06-18 15:20:28.244052+00   140
56      2026-06-18 15:21:33.980419+00   141
57      2026-06-18 15:23:05.724205+00   142
58      2026-06-18 15:25:44.856537+00   143
59      2026-06-18 15:28:26.020813+00   144
60      2026-06-18 15:36:52.224582+00   134
61      2026-06-18 15:42:24.418091+00   145
62      2026-06-18 15:43:11.814121+00   147
63      2026-06-18 15:43:27.70851+00    148
64      2026-06-18 16:55:54.705598+00   149
65      2026-06-18 16:56:47.224409+00   150
66      2026-06-18 16:58:21.919905+00   151
67      2026-06-18 16:59:37.521853+00   152
68      2026-06-18 17:06:05.813103+00   153
69      2026-06-18 17:07:23.656715+00   154
70      2026-06-18 17:08:03.833862+00   155
71      2026-06-18 17:08:16.631882+00   156
72      2026-06-18 17:08:24.749716+00   157
73      2026-06-18 17:09:00.87149+00    158
74      2026-06-18 17:12:03.228226+00   159
75      2026-06-18 18:29:56.176694+00   160
76      2026-06-18 18:30:17.374688+00   161
77      2026-06-18 22:30:55.030937+00   162
78      2026-06-18 22:32:00.299106+00   163
79      2026-06-18 22:32:30.754082+00   164
80      2026-06-18 22:32:37.889281+00   165
81      2026-06-18 22:33:08.659161+00   166
82      2026-06-18 22:34:28.978202+00   167
\.


--
-- Data for Name: token_blacklist_outstandingtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.token_blacklist_outstandingtoken (id, token, created_at, expires_at, user_id, jti) FROM stdin;
1       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTc5OTQxNywiaWF0IjoxNzgxMTk0NjE3LCJqdGkiOiIwMjlkNTMyYWQwZWY0ZWYyYTAwMmM5YjcxNDEwYjliZCIsInVzZXJfaWQiOiJjMmEzNzQ5MS1lYThjLTQwNjItYjdmNy03OTUyOWU3N2IzZmYifQ.NSD5H_T_3Gbpm6lmsOt0jBg5g4csZNJrL1oXLt6a7QA        2026-06-11 17:04:40.848501+00   2026-06-18 16:16:57+00  \N      029d532ad0ef4ef2a002c9b71410b9bd
2       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwMjMwMiwiaWF0IjoxNzgxMTk3NTAyLCJqdGkiOiIxMWQ5MDk1NmY2OWQ0ZmI0YmFhYjU4YjYyYTBjMGFlMiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.5RPQiaoz5yrhvvSIEK_filcD8hqyIvdBuflO7HCI0Cs        2026-06-11 17:05:02.410391+00   2026-06-18 17:05:02+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 11d90956f69d4fb4baab58b62a0c0ae2
3       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwMzgwMCwiaWF0IjoxNzgxMTk5MDAwLCJqdGkiOiJhYWE4YzAzMzA3MWQ0MDcwOWRmYWUyM2FiMjI0ZGQ5MiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.r8lUZ18ggpj3T9pyCP_m4fH81kG9tkB65KjiML0eDrQ        2026-06-11 17:30:00.863085+00   2026-06-18 17:30:00+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aaa8c033071d40709dfae23ab224dd92
4       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwNDA1NywiaWF0IjoxNzgxMTk5MjU3LCJqdGkiOiI3YjUyMDQ0YjZkNGE0MzBiYjhiYmJkMDc1NzNiYWFmMyIsInVzZXJfaWQiOiJlZDhlZjQ2ZS1kNmZjLTQyMWItOTJiYS1jYTM2YTgwY2M2ZWEifQ.5zn_7eiPPaIjTRUywa9HX7T0KLJasSh6t4gnq2mR6GE        2026-06-11 17:34:17.398965+00   2026-06-18 17:34:17+00  ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea 7b52044b6d4a430bb8bbbd07573baaf3
5       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwNDExNSwiaWF0IjoxNzgxMTk5MzE1LCJqdGkiOiI3MTNhMmMzMGRkMTY0N2ZiYjM2ZjI4YmIwY2VmOWI0YiIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.pWAMP1rrRI_DE1Af1jCRc1IiJOdWzYw6SDDuJy6aqz0        2026-06-11 17:35:15.703817+00   2026-06-18 17:35:15+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 713a2c30dd1647fbb36f28bb0cef9b4b
6       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwNDQ4OSwiaWF0IjoxNzgxMTk5Njg5LCJqdGkiOiIzY2FmYjVkNjU2Yjg0ZDQ4OTkxM2YwMDI4YzJkYzczOCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.c-97UkbJztN02xXb89tqs-98R_SnrQNaOfzAR6YGaCE        2026-06-11 17:41:29.34416+00    2026-06-18 17:41:29+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 3cafb5d656b84d489913f0028c2dc738
7       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwODM1NywiaWF0IjoxNzgxMjAzNTU3LCJqdGkiOiJjOWNiNWJlMTFkNDY0YjhkOTJlYjA3OGRiM2IwN2Q4NiIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ.N892wjoZkvuLrL9FMZlGBvnYGATgdp_ySdZ0ceNCDEw        2026-06-11 18:45:57.405904+00   2026-06-18 18:45:57+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 c9cb5be11d464b8d92eb078db3b07d86
8       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwOTI0MywiaWF0IjoxNzgxMjA0NDQzLCJqdGkiOiIxNGY3Y2UzYzI3MTM0ODJhOWI3YjBlMDZjNjc5ZTA0ZiIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.EmvB3WP56lUK1ml-X208g_z5CiMLshehI2roKUrUac8        2026-06-11 19:00:43.653801+00   2026-06-18 19:00:43+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 14f7ce3c2713482a9b7b0e06c679e04f
9       eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwOTM0MCwiaWF0IjoxNzgxMjA0NTQwLCJqdGkiOiJkY2JlNjg5MDc2NDE0MDA4YmViNjc2MjQ1ZjhlYTE2ZiIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.Wy8J4zv_BawFXmYGABalutrvWJRtz5OR3xXQiiVsAsE        2026-06-11 19:02:20.685671+00   2026-06-18 19:02:20+00  77e0d595-d6da-4158-8f75-2e4f9947e156 dcbe689076414008beb676245f8ea16f
10      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgwOTY1MiwiaWF0IjoxNzgxMjA0ODUyLCJqdGkiOiJlNTYyOTg0ODgwNDE0Yzc0YjRiZTlmZTEzMzVlNDFiNSIsInVzZXJfaWQiOiIwODYyMjI3MC02MzlmLTRlMGMtOGI5Zi1mODY5YmRmYmNjYTEifQ.ExQXd_OjO1fzrHeKXsenxpUdiNMUnTuKBIhlUYq1JAE        2026-06-11 19:07:32.123244+00   2026-06-18 19:07:32+00  08622270-639f-4e0c-8b9f-f869bdfbcca1 e562984880414c74b4be9fe1335e41b5
11      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgxMTIwNiwiaWF0IjoxNzgxMjA2NDA2LCJqdGkiOiI1MjE3NjZlYWEzZTU0ZmZlOGI0ZmU1YjA4NTk2MjUyZSIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.YeTUVGCwEGKGG-nSpC8mkQQJ0jsF7vahZ0cLbX1oMn0        2026-06-11 19:33:26.856634+00   2026-06-18 19:33:26+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 521766eaa3e54ffe8b4fe5b08596252e
12      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTgxMjAxOSwiaWF0IjoxNzgxMjA3MjE5LCJqdGkiOiJkNWRlYWQ0YjczN2U0MmY2ODExNzhiYjdiMDk5MDc3ZCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.52y7fguwEwXzr0s48wrlJRDvd99dYzIsAbvaE8XDEdY        2026-06-11 19:46:59.553227+00   2026-06-18 19:46:59+00  77e0d595-d6da-4158-8f75-2e4f9947e156 d5dead4b737e42f681178bb7b099077d
13      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg1MTU3OSwiaWF0IjoxNzgxMjQ2Nzc5LCJqdGkiOiI3MmNmMjQ4YTk5M2E0YTgzOGMwZDAyOTJiMGFiNThlMSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.PenuYxEImk1W16KYyW_cUqP_dZiDv3pkWYv4DlEDD88        2026-06-12 06:46:19.904191+00   2026-06-19 06:46:19+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 72cf248a993a4a838c0d0292b0ab58e1
14      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg1MTc1NiwiaWF0IjoxNzgxMjQ2OTU2LCJqdGkiOiJlMWUxMzg5YmFiZWQ0NjNlYTVhYWU4NzNlNzE3N2FmYyIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.Yu3wQsvwSB7_dPahaec_exeuTN7DxUltgcGP2WOm5po        2026-06-12 06:49:16.626865+00   2026-06-19 06:49:16+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 e1e1389babed463ea5aae873e7177afc
15      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg2Mzc1NSwiaWF0IjoxNzgxMjU4OTU1LCJqdGkiOiJiZWQwZTRmMmU3ZjA0ZTc4YjNmNzY0ZGJlMTg5ZjlkOSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.QWWUGkNi1vSV5ILOHTGRrWdZKiCcNG9PDc0vtJIDmfc        2026-06-12 10:09:15.428334+00   2026-06-19 10:09:15+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 bed0e4f2e7f04e78b3f764dbe189f9d9
16      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg4MTUwMywiaWF0IjoxNzgxMjc2NzAzLCJqdGkiOiJhMGZkMDFjY2NlMTI0Y2FhODkwNWQ3NzQ0OGI1MTFmNyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.XahO1_-edROj2blT5aX5fnsZKDMVVNtdPWTDPNiMmMo        2026-06-12 15:05:03.406785+00   2026-06-19 15:05:03+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea a0fd01ccce124caa8905d77448b511f7
17      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg4MTUyMSwiaWF0IjoxNzgxMjc2NzIxLCJqdGkiOiI5YmNlZGZkMmQ1ODY0ZTFlOTBkZjRkMGY3NzQzOTc1NCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.TzsMsKCfN1hLum22rRW5FZQvnIbc898JUycGpl1YI_4        2026-06-12 15:05:21.984245+00   2026-06-19 15:05:21+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 9bcedfd2d5864e1e90df4d0f77439754
18      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg4MTUzMCwiaWF0IjoxNzgxMjc2NzMwLCJqdGkiOiJlMjMwY2U1ZDQ0NmU0ZDUzODBjYzk1NjQyODMwYTgxYiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.016vs8eQqLNNflutMaSz2OhzxQtbvHCZOm-T_QMUdI8        2026-06-12 15:05:30.612971+00   2026-06-19 15:05:30+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea e230ce5d446e4d5380cc95642830a81b
19      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5MDA2NCwiaWF0IjoxNzgxMjg1MjY0LCJqdGkiOiIxYmY3Y2YzZTI5MDY0ZWY1YTFmYjYxZDk3ODA5M2UxZiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.zlQ77LFmqI099MMt2DG2Phh_I6Jcuf7VdN6ekQ2cUDA        2026-06-12 17:27:44.87841+00    2026-06-19 17:27:44+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1bf7cf3e29064ef5a1fb61d978093e1f
20      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDAwNiwiaWF0IjoxNzgxMjg5MjA2LCJqdGkiOiJmZDYyOWUxZWM3N2E0ZjNlYTRjMmNiNWFmZDViYmNlMCIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.78PTVlqcZZQnSW5FQ_LQPU1MaL1KP7CLWENdQCK89tA        2026-06-12 18:33:26.069276+00   2026-06-19 18:33:26+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 fd629e1ec77a4f3ea4c2cb5afd5bbce0
21      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDAxMSwiaWF0IjoxNzgxMjg5MjExLCJqdGkiOiI3MTZmMDM5NDk1ODY0ZDE5OGIxY2Y2YzNiMTAxZjQ2MCIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.BURgSZkWbTdivi6qcqBD8lO98bvCtXIMXUpPpKH1-hA        2026-06-12 18:33:31.319372+00   2026-06-19 18:33:31+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 716f039495864d198b1cf6c3b101f460
22      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDAxNSwiaWF0IjoxNzgxMjg5MjE1LCJqdGkiOiIzMTU5ZGE5NjJjYjE0YzY1ODk3NGRkMGU5YTc2M2FhNyIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.4uUVDha8g9sn0RbIPNG7sOzATEb3vhML2GUgtj8oG6I        2026-06-12 18:33:35.829084+00   2026-06-19 18:33:35+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 3159da962cb14c658974dd0e9a763aa7
23      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDAzNywiaWF0IjoxNzgxMjg5MjM3LCJqdGkiOiI0M2MwYjQyNzBlOWY0YmVlOTNmMDUzZWYxYjY2MzEyNiIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.ceQnJY0n1IxuR7Pm0XE-VSkK9A8NxCLe4XeNoYJfK7c        2026-06-12 18:33:57.671918+00   2026-06-19 18:33:57+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 43c0b4270e9f4bee93f053ef1b663126
24      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA2NSwiaWF0IjoxNzgxMjg5MjY1LCJqdGkiOiIzZGMwZWVhY2Q4MzE0NGY0YjJhNmMxN2RjMjFmM2M5YSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.R9UzKL5c2-Tq4vQRV3aO2BcOn9qx01kaKhXnm6JEBTI        2026-06-12 18:34:25.074407+00   2026-06-19 18:34:25+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 3dc0eeacd83144f4b2a6c17dc21f3c9a
25      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA3MSwiaWF0IjoxNzgxMjg5MjcxLCJqdGkiOiJjYjVmZDIyMjYwYTQ0YmEwYTIxMTlkODNhNzc0ZmIzMCIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.rm7tZkttd1DiwB6dViO0CClHPL6NYQ8mu59xEqTbt3g        2026-06-12 18:34:31.240986+00   2026-06-19 18:34:31+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 cb5fd22260a44ba0a2119d83a774fb30
26      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA3NiwiaWF0IjoxNzgxMjg5Mjc2LCJqdGkiOiJhMzZhYjE5ZGUwNGI0NGM5YTdmODc4NzQ1ZDNhNDQzMyIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.o-66ydK_zKF1kq_El3nRijsbQr9KBocMJ2JLsY9WD5Q        2026-06-12 18:34:36.528041+00   2026-06-19 18:34:36+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 a36ab19de04b44c9a7f878745d3a4433
27      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA3OSwiaWF0IjoxNzgxMjg5Mjc5LCJqdGkiOiI0MGU4ZWI1MTk5ZTA0ZWVlOThhMWQ5MzZhNTMwYWZmZiIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.SgjNVSMDfrvYmI6_mH_X0cvmiF1iTQtz8wvWRvlg9aI        2026-06-12 18:34:39.35551+00    2026-06-19 18:34:39+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 40e8eb5199e04eee98a1d936a530afff
28      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA4MSwiaWF0IjoxNzgxMjg5MjgxLCJqdGkiOiIwNmM5N2FjZTgyMjk0NmJjYjM5YmJlNTViYzAwMTg3YyIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.FmR0f3puMv_Gs2lygBNWEMW1ZkUi0PhxQ3upXiy5Igk        2026-06-12 18:34:41.775718+00   2026-06-19 18:34:41+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 06c97ace822946bcb39bbe55bc00187c
29      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA4NCwiaWF0IjoxNzgxMjg5Mjg0LCJqdGkiOiIyM2RjMThhMGYzMTg0ZjRkYmMzOTQxYTNhY2ExNjI3MyIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.MjS7mH7AIRHUyy--LoRIm_ThgrCkzfxh-JD7c8x4vkg        2026-06-12 18:34:44.138367+00   2026-06-19 18:34:44+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 23dc18a0f3184f4dbc3941a3aca16273
30      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MTg5NDA4NiwiaWF0IjoxNzgxMjg5Mjg2LCJqdGkiOiJkOTAyNDFhNzIzNDQ0ZGRkOTQxZWFiOWM2NTc1Yjc2ZiIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.PDE4x8Y0bC0Xz1k80qcpt_EU_nriBabzd0Rky0OUgGs        2026-06-12 18:34:46.302115+00   2026-06-19 18:34:46+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 d90241a723444ddd941eab9c6575b76f
31      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjExODI0NCwiaWF0IjoxNzgxNTEzNDQ0LCJqdGkiOiI1ZmNmMzBjOGZkZTU0OTA0OGY4YjZkMzZiMWFhYWMxNSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.a0v4Hp2hlP70GjN8x5XU2tjn6_9tp6fP1YM2PIC54jo        2026-06-15 08:50:44.856231+00   2026-06-22 08:50:44+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 5fcf30c8fde549048f8b6d36b1aaac15
32      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEyNzIzNSwiaWF0IjoxNzgxNTIyNDM1LCJqdGkiOiJjZDY2MDFlMjY5MWY0YTE2YWU4NzZiYzQyNmJjZDAyNCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.N814RtnljRDpnCjR_zB-ExSih7Z44IRe5k-7HJnKaKE        2026-06-15 11:20:35.362105+00   2026-06-22 11:20:35+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea cd6601e2691f4a16ae876bc426bcd024
33      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEyODMyOCwiaWF0IjoxNzgxNTIzNTI4LCJqdGkiOiJjOTk4MWIxZmQ1YmE0ZjhjYmE4OWJmZWZjZGQ0NTkwYSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.OqiaxePP7U1Znk-lat-t75BXAuC2b08uRnpfX2yH2QI        2026-06-15 11:38:48.217905+00   2026-06-22 11:38:48+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 c9981b1fd5ba4f8cba89bfefcdd4590a
34      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMTYyOSwiaWF0IjoxNzgxNTI2ODI5LCJqdGkiOiI4MDI5Mjk1NzJiYjc0ZDRiYTMxZTk1ODNiOGI0MGMwNSIsInVzZXJfaWQiOiJlZDhlZjQ2ZS1kNmZjLTQyMWItOTJiYS1jYTM2YTgwY2M2ZWEifQ.DSCwKJ5md-1kPIwjeLv6gyorV9emfyWTtVBtcUapvcE        2026-06-15 12:33:49.05341+00    2026-06-22 12:33:49+00  ed8ef46e-d6fc-421b-92ba-ca36a80cc6ea 802929572bb74d4ba31e9583b8b40c05
35      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMTkyNSwiaWF0IjoxNzgxNTI3MTI1LCJqdGkiOiI1MDhhMDJkYTQwZjc0YWFhYWRjYzg1ZTMzMTU5YWNkZiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.DNHDgdJYMzndGz48Q8fkF3pkO6Omv0G7uIxBIVujI7s        2026-06-15 12:38:45.784596+00   2026-06-22 12:38:45+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 508a02da40f74aaaadcc85e33159acdf
36      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMTk4NSwiaWF0IjoxNzgxNTI3MTg1LCJqdGkiOiJiNGVkNDNiZTZkYmQ0MWMwOGI0NzhhYWM3MDg4NzRkMSIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.rVI_gEreAySImbe9Yhe1uQLNMAOclo1oIS897K9oSSU        2026-06-15 12:39:45.274368+00   2026-06-22 12:39:45+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 b4ed43be6dbd41c08b478aac708874d1
37      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMTk5NiwiaWF0IjoxNzgxNTI3MTk2LCJqdGkiOiI5Yzc2MGRiM2E1NDY0NmIzYjBjZGMwZWNiODc2NmY4YSIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.UKxXZk6_wZfRA_N8JSPVDT_rUSxMppCfAlXQqD2FVWw        2026-06-15 12:39:56.846666+00   2026-06-22 12:39:56+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 9c760db3a54646b3b0cdc0ecb8766f8a
38      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMjAzMSwiaWF0IjoxNzgxNTI3MjMxLCJqdGkiOiI0ZDMyMGQyY2QzMWQ0MDIzODM0M2ViZDhiNGQwYTUwNSIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ.JKmCl4Qtz8j966yg6za1VEtLTMvbeBOoDN-p3h-Noa8        2026-06-15 12:40:31.371716+00   2026-06-22 12:40:31+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 4d320d2cd31d40238343ebd8b4d0a505
39      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMjEzMCwiaWF0IjoxNzgxNTI3MzMwLCJqdGkiOiJkM2UxMDc3ZjVjOWQ0MGEwOGFjNjRiNmNkNWMyMmI1NiIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.1rpx5O7ET_7YyD2QrLvg7lz4_d3QHNxOObyDYJ0HiVo        2026-06-15 12:42:10.017498+00   2026-06-22 12:42:10+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c d3e1077f5c9d40a08ac64b6cd5c22b56
40      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMjg2NywiaWF0IjoxNzgxNTI4MDY3LCJqdGkiOiJiZWViZGYwZjMzMGM0YWUxYjM2MzU4ZTE5N2RjODAyZiIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ.TPEOSRndmMnkGRb25QZZ-kj6xH7E56bh2SlRJn7aRws        2026-06-15 12:54:27.682724+00   2026-06-22 12:54:27+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 beebdf0f330c4ae1b36358e197dc802f
41      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMjk0OSwiaWF0IjoxNzgxNTI4MTQ5LCJqdGkiOiI4YjJjODVjMWY1ZDk0ZjhhYjI3MTljZTBiZDczNTk5ZCIsInVzZXJfaWQiOiIyMGMzMjVhMC1mMGJmLTQzY2QtOGEzNy0zNDYxYjA5MzAzN2YifQ.8NLam5fYLD5hLBaBC8L3MNX513WaG_rV0BLXlW6rTuk        2026-06-15 12:55:49.932188+00   2026-06-22 12:55:49+00  20c325a0-f0bf-43cd-8a37-3461b093037f 8b2c85c1f5d94f8ab2719ce0bd73599d
42      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzMzMzMSwiaWF0IjoxNzgxNTI4NTMxLCJqdGkiOiI4NjExNWFiMzUxZDQ0ZjdhOGJhZGEwYjc5MTFiNzNkMSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.DRDQDKp9-8v2Kc5dsSY2ou5r_wO0jOR2NNCOkEIIZKs        2026-06-15 13:02:11.146767+00   2026-06-22 13:02:11+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 86115ab351d44f7a8bada0b7911b73d1
43      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzNDI0MSwiaWF0IjoxNzgxNTI5NDQxLCJqdGkiOiJkYTA4OTczOGNhNDI0ZWE0OTVjZTJhZDBkN2EwNWI5NiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.hJXLESGaMW2EWlBwYWcmT9KxsegSI0CCaApqNEgjbls        2026-06-15 13:17:21.812031+00   2026-06-22 13:17:21+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 da089738ca424ea495ce2ad0d7a05b96
44      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjEzNDI4MiwiaWF0IjoxNzgxNTI5NDgyLCJqdGkiOiJmNmRiNTIxM2QwNjE0YTg5OGU3MzZkNTlkYWYyZDBmMCIsInVzZXJfaWQiOiJlZWIwYTA5MC0zYWRiLTQ0ZDQtOTQ4OS1hMGMxZjk2OGM0YWIifQ.3Wx2fTQ4cHr5Dgky86uDD_sL_PnNfG_MR2d-MwIznBw        2026-06-15 13:18:02.740721+00   2026-06-22 13:18:02+00  eeb0a090-3adb-44d4-9489-a0c1f968c4ab f6db5213d0614a898e736d59daf2d0f0
45      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjE0OTc4MCwiaWF0IjoxNzgxNTQ0OTgwLCJqdGkiOiI0NGIwMTZiM2QxYzM0Mzc2YmIxOWJlM2UxZWQ5YmE1ZiIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.XbS9hLz6oPRMNcYRqHHgJnunLawYlI94tV2ODBHCwu4        2026-06-15 17:36:20.748771+00   2026-06-22 17:36:20+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 44b016b3d1c34376bb19be3e1ed9ba5f
46      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjE1NjQ1MSwiaWF0IjoxNzgxNTUxNjUxLCJqdGkiOiJhZWJlZjIxYWJlZGI0N2JiOWNiNDE2MzVhMDBlNjVkZCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.62MA3xUsue4r_mxt-VtWDnO65bcECqui3zo_mfIhWJ0        2026-06-15 19:27:31.197029+00   2026-06-22 19:27:31+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea aebef21abedb47bb9cb41635a00e65dd
47      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjE1Nzg0MCwiaWF0IjoxNzgxNTUzMDQwLCJqdGkiOiJiNTY2YzQ1NDdiM2E0NGJhYTQyZmM0OWNkOTU4NzVhZCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.aLx13Pi4-dqAfj_BoIGq9D-MPVgfWHrhUjV56Qyp5cA        2026-06-15 19:50:40.804057+00   2026-06-22 19:50:40+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b566c4547b3a44baa42fc49cd95875ad
48      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIwMTM3MywiaWF0IjoxNzgxNTk2NTczLCJqdGkiOiJiNWViZGQwMTE5NzI0NmE3OWM2M2FjZGYxNWRhNWY5ZSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.rSP798G1IxI_qdDZqnKZo-wn0gz4aXnvy3r3pcEOy8Y        2026-06-16 07:56:13.275129+00   2026-06-23 07:56:13+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea b5ebdd01197246a79c63acdf15da5f9e
49      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIwMjQyOSwiaWF0IjoxNzgxNTk3NjI5LCJqdGkiOiJjMjI2MmFmMDhkNDY0YmRiYjU5MTNmZWI5OWJkNjk3MSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ._Hz8mb4tICKjI3gaCj4Ea5pW8tpaXinIvzljp9xa7hg        2026-06-16 08:13:49.705407+00   2026-06-23 08:13:49+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea c2262af08d464bdbb5913feb99bd6971
50      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODAyMiwiaWF0IjoxNzgxNjEzMjIyLCJqdGkiOiI1ZjkyZWZmN2Q4Yjk0MWE5OTI3MWRiOWYxZjE1ZWFkYSIsInVzZXJfaWQiOiJjNjBmM2E2OC0wZjZkLTQxY2YtYWQ0MC1hZDFkZTI4NDNiYzEifQ.22lY6aHqZ94EQVjcjHDcAuRa7iVtTOX07nAomdcTt6g        2026-06-16 12:33:42.759372+00   2026-06-23 12:33:42+00  c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 5f92eff7d8b941a99271db9f1f15eada
51      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODIwMCwiaWF0IjoxNzgxNjEzNDAwLCJqdGkiOiI5YjRlNDEyMzgxOWE0NDgzYTE0OTY0YzhmMzYzN2Y4ZiIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.mXVClJHmsYHy_xAbBsVtIqg4Pqz9I52U56hsrMyIe_U        2026-06-16 12:36:40.555061+00   2026-06-23 12:36:40+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9b4e4123819a4483a14964c8f3637f8f
52      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODI0MywiaWF0IjoxNzgxNjEzNDQzLCJqdGkiOiJhNTczMTczOTc3OTg0MzdkYTVjMGI2NzMzMjliNjE3OSIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.R3Yq4S4FdSMraJsO5uPA98GT584Bv9LBTc6ClHUF3QI        2026-06-16 12:37:23.387404+00   2026-06-23 12:37:23+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd a57317397798437da5c0b673329b6179
53      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODMxOCwiaWF0IjoxNzgxNjEzNTE4LCJqdGkiOiIzNWM2NDNjNDZmMzM0ZjIyYWIxYWRjODc1ZDY5ODVjMCIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.BUQzx36DaOGIxHvFmkTxWf8SNf58a7etC8WcgnBalHk        2026-06-16 12:38:38.053947+00   2026-06-23 12:38:38+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 35c643c46f334f22ab1adc875d6985c0
54      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODQyNCwiaWF0IjoxNzgxNjEzNjI0LCJqdGkiOiI2MTBjNzIzM2E1ZmE0ZGZkYmI4MDRjNWNlOTZlYWUxMiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.nUwxXfIhRPrTnkb0j4LEwVjTr2iQLtcltRbJiR7OEB8        2026-06-16 12:40:24.523231+00   2026-06-23 12:40:24+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 610c7233a5fa4dfdbb804c5ce96eae12
55      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODQ2NCwiaWF0IjoxNzgxNjEzNjY0LCJqdGkiOiI3Y2FhMmNmMDUxYzU0OTgyYmIxZmE5M2VlZmQyNWUyYyIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.AhCBFtopLqLkoJaK8ZxXk3y8Kn7l-2xPx-fQghDigrQ        2026-06-16 12:41:04.484031+00   2026-06-23 12:41:04+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 7caa2cf051c54982bb1fa93eefd25e2c
56      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODczNiwiaWF0IjoxNzgxNjEzOTM2LCJqdGkiOiI0MDQ5NDM5OTI0Yzc0YWYxOTUyZTVkZjAwZTc1ODJjMSIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ._wdUR8jYRXXU5Rlz7ScYKt0XLnuuOi7F-K5VKz-pip8        2026-06-16 12:45:36.142784+00   2026-06-23 12:45:36+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 4049439924c74af1952e5df00e7582c1
57      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODkzOSwiaWF0IjoxNzgxNjE0MTM5LCJqdGkiOiJhMTNkNWYzYmM4ZWE0ZjZlOGZiZmMyY2NkZTJiMGRkZiIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.6B5pSaG3t5oWmFJn66ztzu_P23tMaOys9zg-f1VXles        2026-06-16 12:48:59.563381+00   2026-06-23 12:48:59+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd a13d5f3bc8ea4f6e8fbfc2ccde2b0ddf
58      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIxODk4NSwiaWF0IjoxNzgxNjE0MTg1LCJqdGkiOiIxMDI1OTViZmNhMWU0NjJhYmEzMjAzNTM3OTNhZjg5MCIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ.AfE9ucLSZNUVzQjHs3uRNZuj6teOJyxXChBm_VV_khY        2026-06-16 12:49:45.314755+00   2026-06-23 12:49:45+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 102595bfca1e462aba320353793af890
59      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzMjkyMiwiaWF0IjoxNzgxNjI4MTIyLCJqdGkiOiIxNDA1ODE2MWQ2Njg0MjE1OWRkNzI1OTZiM2E1Mzc3YyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.MoMhICs3Ktipnk5qvStsGBUsq-AbxBC7-I6Abe9LOPA        2026-06-16 16:42:02.016412+00   2026-06-23 16:42:02+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 14058161d66842159dd72596b3a5377c
60      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzMjkzMywiaWF0IjoxNzgxNjI4MTMzLCJqdGkiOiJiNzNmNzI3YjMyNWY0ZjY1OGI1ZjRmZjUxNWJjYWIxNiIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.zwDKyNnwSxUeavUIy6jO46ZSPiijbdXiElQD_E621JI        2026-06-16 16:42:13.571545+00   2026-06-23 16:42:13+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c b73f727b325f4f658b5f4ff515bcab16
61      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzNTUyMiwiaWF0IjoxNzgxNjMwNzIyLCJqdGkiOiJjZTNlMDQ1YmEwMzA0MjM3OTc3MmVjNTM2MzQ2NmVkNiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.TDtxobwKzkr5qTDgulkw7jvGN9I738G_yuHXfkAeHKs        2026-06-16 17:25:22.692357+00   2026-06-23 17:25:22+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 ce3e045ba03042379772ec5363466ed6
62      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzNzE4MSwiaWF0IjoxNzgxNjMyMzgxLCJqdGkiOiJiMjkzNGY4YmZmM2Y0MDk2OWE2NzQ5YTVjZjJhM2U0NCIsInVzZXJfaWQiOiJjNjBmM2E2OC0wZjZkLTQxY2YtYWQ0MC1hZDFkZTI4NDNiYzEifQ.FQeh_D8BvcA_8sbVnWtIpA52IVxXWfT8h8WVrrc-yfA        2026-06-16 17:53:01.293591+00   2026-06-23 17:53:01+00  c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 b2934f8bff3f40969a6749a5cf2a3e44
63      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzODE2OCwiaWF0IjoxNzgxNjMzMzY4LCJqdGkiOiIwMzlhNjUwNTJlNzA0ZDlhOGU3YmM0MWY3ZTMxMzJjMSIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.BB9PZtsoyzj5noZBBgisSm8PDWw1okj0hwMXo3sR2p0        2026-06-16 18:09:28.606271+00   2026-06-23 18:09:28+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 039a65052e704d9a8e7bc41f7e3132c1
64      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzODM0MCwiaWF0IjoxNzgxNjMzNTQwLCJqdGkiOiI1YWIwZWZmYjc3NTM0NzdkOTEyOGFkYjFiNDA4M2JkYiIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.tvY8YDMLHVt_iyjdKoEsfh5WAc3pIMvoqHYOK5rj33w        2026-06-16 18:12:20.612773+00   2026-06-23 18:12:20+00  77e0d595-d6da-4158-8f75-2e4f9947e156 5ab0effb7753477d9128adb1b4083bdb
65      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzODQwNCwiaWF0IjoxNzgxNjMzNjA0LCJqdGkiOiIyM2Q0ZGIwOTJhNWQ0Mzg3YmU3YjAzOWI1NDgxMzg3NiIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.62mAnrUeZtXgp9SnCRE5Vbp34xrN_r53S6jskKn6Y6Q        2026-06-16 18:13:24.222736+00   2026-06-23 18:13:24+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 23d4db092a5d4387be7b039b54813876
66      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzODU3MiwiaWF0IjoxNzgxNjMzNzcyLCJqdGkiOiJmZTc5YjE3NDIyYTk0MjcwODMzNDE4NDNlNmE1MGU5ZiIsInVzZXJfaWQiOiJjNjBmM2E2OC0wZjZkLTQxY2YtYWQ0MC1hZDFkZTI4NDNiYzEifQ.9PYN3J528irHpVbc8k87m5CGPBNKbVsSEPXb_E7_JLw        2026-06-16 18:16:12.226249+00   2026-06-23 18:16:12+00  c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 fe79b17422a9427083341843e6a50e9f
67      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzODkwNiwiaWF0IjoxNzgxNjM0MTA2LCJqdGkiOiJlNzQxMTRiNDJmODc0ZTE5YjY2NjkxYzFkMTM3ZjJjMCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.h5cv49X80oXWID-1pg5Y5lYm_vbwoUW0V_PlMBH3WPs        2026-06-16 18:21:46.442844+00   2026-06-23 18:21:46+00  77e0d595-d6da-4158-8f75-2e4f9947e156 e74114b42f874e19b66691c1d137f2c0
68      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjIzOTI4MiwiaWF0IjoxNzgxNjM0NDgyLCJqdGkiOiI2YmFmNzM2YWJjYjM0ZDJiYjc4YjI4NWY5NTgzM2YzZCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.I5fxL1NI0hyb8Ioeh0XFg8rhwy8lIodXVu6X5qFEJUg        2026-06-16 18:28:02.428962+00   2026-06-23 18:28:02+00  77e0d595-d6da-4158-8f75-2e4f9947e156 6baf736abcb34d2bb78b285f95833f3d
69      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0MTIwMSwiaWF0IjoxNzgxNjM2NDAxLCJqdGkiOiI0ZDI1ZTQ5NjhlNzI0NTM4YWQyZTQzNmVkNGJjOWNkNCIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.s5TrVokoITasBidIrbSTk9wQZsLEyl7YSVtbDWAISE0        2026-06-16 19:00:01.120842+00   2026-06-23 19:00:01+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 4d25e4968e724538ad2e436ed4bc9cd4
70      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0MTkyMiwiaWF0IjoxNzgxNjM3MTIyLCJqdGkiOiJiODUwNDg5MjIxMzU0NWE1OGRmYzc5MDdlZTRjYzU0YiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.m18NLiqqGypaSt-cTjLFKPNmskbmjCFLtJLEXAmS-to        2026-06-16 19:12:02.769028+00   2026-06-23 19:12:02+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 b8504892213545a58dfc7907ee4cc54b
71      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0Mjg3NSwiaWF0IjoxNzgxNjM4MDc1LCJqdGkiOiJlZGY5MmQxMTRkYjA0ZTY5Yjk5ZGNjZmEyNDk5ZDlhNCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.Ghrpek60ZhUhU90YFcyXIxDHWaI0M_wPXdUPzdspmvA        2026-06-16 19:27:55.890748+00   2026-06-23 19:27:55+00  77e0d595-d6da-4158-8f75-2e4f9947e156 edf92d114db04e69b99dccfa2499d9a4
72      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0Mjg5MiwiaWF0IjoxNzgxNjM4MDkyLCJqdGkiOiIwNDQ1ZWU2NTdhZTk0NDQ1YWMwM2YwOTgzNjY5Zjg0YiIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.lkTPeyJkjzgBFJ71TM0Ip3jFlXBh8uPpciiQOXgRJW0        2026-06-16 19:28:12.040386+00   2026-06-23 19:28:12+00  77e0d595-d6da-4158-8f75-2e4f9947e156 0445ee657ae94445ac03f0983669f84b
73      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0MzA3NCwiaWF0IjoxNzgxNjM4Mjc0LCJqdGkiOiI2ZTVlZTBkYTVlM2Y0ZGJhYmI2Mjg3MDA5NmFmNjEwNSIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.G5W32iDR89jIa5X_MzUpjPPrJ1JRPmpxfqRpfWt4Stc        2026-06-16 19:31:14.673554+00   2026-06-23 19:31:14+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 6e5ee0da5e3f4dbabb62870096af6105
74      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0NjA5NSwiaWF0IjoxNzgxNjQxMjk1LCJqdGkiOiI0Nzc5NTA3MjgzOGM0MTM3YjUyYzYyMWE4ODQ4ODQxOSIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.V1sBMtzW7-ED_gZs4oQaOfgVSRKA3GumcNHpXr8Qnt0        2026-06-16 20:21:35.758781+00   2026-06-23 20:21:35+00  77e0d595-d6da-4158-8f75-2e4f9947e156 47795072838c4137b52c621a88488419
75      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0NjA5NiwiaWF0IjoxNzgxNjQxMjk2LCJqdGkiOiIwYjI2ZjE1NWUyZWQ0OWE5YTBlMWUzZGI3NWVmNDhjMSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.whHbluQ2Na5aZlpUMuD2GGLOeyFH8pRfJBONY0cdYe4        2026-06-16 20:21:36.993412+00   2026-06-23 20:21:36+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 0b26f155e2ed49a9a0e1e3db75ef48c1
76      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0OTMwNSwiaWF0IjoxNzgxNjQ0NTA1LCJqdGkiOiI2NDNiY2E0MWZiYjk0YTdjYjJhMWNmOGMxZWRlNDNiZCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.md5YUx41etlGzOezNXccB7MG0i5DGgb_aeYhkmt0vvw        2026-06-16 21:15:05.452248+00   2026-06-23 21:15:05+00  77e0d595-d6da-4158-8f75-2e4f9947e156 643bca41fbb94a7cb2a1cf8c1ede43bd
77      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI0OTg1NiwiaWF0IjoxNzgxNjQ1MDU2LCJqdGkiOiIzZWQ3NjJhZDVhM2Q0ODM3OWZlZjExZDUwMTJhNDJmOSIsInVzZXJfaWQiOiI1YWEwZGZiYi0wYzE3LTQ0NjMtYmMyYi04MGM1NjAyNTFkZDQifQ.cuIpndwL8aBpDvNBSMrTLLlyIChos5CzSKGlLz_93Es        2026-06-16 21:24:16.518196+00   2026-06-23 21:24:16+00  5aa0dfbb-0c17-4463-bc2b-80c560251dd4 3ed762ad5a3d48379fef11d5012a42f9
78      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI1MjQyMiwiaWF0IjoxNzgxNjQ3NjIyLCJqdGkiOiIzZTIwY2ViMTJjMGI0YjY2YTgxNDA0MmY2YjY2ZDJmYSIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.LwiC_JTAcPrLnG4uXHmk_kV5g04fCTFFeMWfZEVLwm4        2026-06-16 22:07:02.837184+00   2026-06-23 22:07:02+00  77e0d595-d6da-4158-8f75-2e4f9947e156 3e20ceb12c0b4b66a814042f6b66d2fa
79      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjI5OTQ4MywiaWF0IjoxNzgxNjk0NjgzLCJqdGkiOiI1OTVhN2JjNTkzMTc0Yzc5YWEyYjQzOWUzOWE5ODQ4NSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.1gm9rphQeiiWpPd1hAudk1aGA8qZbC4X9LH-ART77Kc        2026-06-17 11:11:23.712989+00   2026-06-24 11:11:23+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 595a7bc593174c79aa2b439e39a98485
80      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMwMDI1OCwiaWF0IjoxNzgxNjk1NDU4LCJqdGkiOiI3MmZmMDI4NGY4Yjg0YThiODAwYzFmOTZkZjY5NDQ4MSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.wjWdL1djFVgPzOuu01W2LpXB4kSseeUGBXAkrnlFEHg        2026-06-17 11:24:18.341421+00   2026-06-24 11:24:18+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 72ff0284f8b84a8b800c1f96df694481
81      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMwMjIxMiwiaWF0IjoxNzgxNjk3NDEyLCJqdGkiOiJjMGNhNGFjZTRiZGM0ZTkyYmM5MWQ5MTI3NGI3NjdkMyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.VjwrZVA1btKRt1oMxETRQ69oV8b6Ep1pmkPV4sCYMhI        2026-06-17 11:56:52.255971+00   2026-06-24 11:56:52+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea c0ca4ace4bdc4e92bc91d91274b767d3
82      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMwMzA2OCwiaWF0IjoxNzgxNjk4MjY4LCJqdGkiOiI3NjI1NjcyNTgxZWE0Yzc0ODhkOWYyMWM5N2U2N2Y5ZSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.MChGEYjs6CwIgaYvT3qPkwhEbng-x7DVyARRYmnImqk        2026-06-17 12:11:08.272823+00   2026-06-24 12:11:08+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 7625672581ea4c7488d9f21c97e67f9e
83      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMwNDEyMiwiaWF0IjoxNzgxNjk5MzIyLCJqdGkiOiJmZGI5NTFiNjdmNzU0ZDdmOWNjNmEwOTNiNjQzYzdkMSIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.TLP5_8at5IRmSVeqj_MjyGlzm7e0SJVx4kSQq7a5Ss4        2026-06-17 12:28:42.63595+00    2026-06-24 12:28:42+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd fdb951b67f754d7f9cc6a093b643c7d1
84      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMwODc0OSwiaWF0IjoxNzgxNzAzOTQ5LCJqdGkiOiI0OWI2YjBhZGZhMDg0ZTUyYTg1MWY1ZDdiMmM5NGM3MyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.1-vQiCObXsCSd0arKLOSU7ICrJvpPEtnWSEz-a5XuSQ        2026-06-17 13:45:49.453657+00   2026-06-24 13:45:49+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 49b6b0adfa084e52a851f5d7b2c94c73
85      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxMDAwNiwiaWF0IjoxNzgxNzA1MjA2LCJqdGkiOiIzZTk0ZGZlNjllOTQ0ZGY4ODA0N2U1ZTk3ZDI1MjM1MyIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.P3u4Vc5dzbD-orAgTh0tfUD0hT_VtTldNItkETRqMXc        2026-06-17 14:06:46.363726+00   2026-06-24 14:06:46+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 3e94dfe69e944df88047e5e97d252353
86      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxMTQ4OCwiaWF0IjoxNzgxNzA2Njg4LCJqdGkiOiI1Mjk4YmVlZmFhMTU0YTA4ODFlZDBjOTM1ODVjYzI4YSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.HK7ex1l1VudTZAUn2yZKVBEkQ4_ZU4X_GYslM5Qci2M        2026-06-17 14:31:28.776473+00   2026-06-24 14:31:28+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 5298beefaa154a0881ed0c93585cc28a
87      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxMjI2NiwiaWF0IjoxNzgxNzA3NDY2LCJqdGkiOiI1ZjcxZTJhNjQzNzk0NTk1YWQzZjYwYWU3YjQxZTcxMyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ._xL0PPySi2qAMprh9hkc81YznKE4NAr_xdMGVR1VbU4        2026-06-17 14:44:26.368101+00   2026-06-24 14:44:26+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 5f71e2a643794595ad3f60ae7b41e713
88      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxNTA0NywiaWF0IjoxNzgxNzEwMjQ3LCJqdGkiOiI3ZTcwMTE2MGIzYTc0NWE3ODE3MzEwMzM3ZWI3MmRiYyIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.OR4J4p7kxreSRP1sDzRIkkaIkoGdhnKlreMDwspLDWw        2026-06-17 15:30:47.197213+00   2026-06-24 15:30:47+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 7e701160b3a745a7817310337eb72dbc
89      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxNTA0OCwiaWF0IjoxNzgxNzEwMjQ4LCJqdGkiOiIyYzZkMzE0NWJjYjg0NTY1YmJlYjU3NzlhMmUwZTNiOCIsInVzZXJfaWQiOiIzMWJhNDQ4ZS00ZDdlLTQ4NTctYmJjYi1hZWQwY2U2ZWU1ZDYifQ.6vckFlDW8_L_87oDuQ3F_5yiAf14SXTo4rVxGeZY1FM        2026-06-17 15:30:48.920391+00   2026-06-24 15:30:48+00  31ba448e-4d7e-4857-bbcb-aed0ce6ee5d6 2c6d3145bcb84565bbeb5779a2e0e3b8
90      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxNjk5OCwiaWF0IjoxNzgxNzEyMTk4LCJqdGkiOiIzMjk5NWRjYThjNmY0MWQwOGQ4NGI5NDE3YjU0MjdmZSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.MYHvwNXhP0ezMl1MQfCeXTscQ0NY36pJdB2AI31fneM        2026-06-17 16:03:18.316744+00   2026-06-24 16:03:18+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 32995dca8c6f41d08d84b9417b5427fe
91      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxNzE5MSwiaWF0IjoxNzgxNzEyMzkxLCJqdGkiOiI0NTQ2YWMyOTJkMWY0NmMwOTcyMjBjODBkZjk5NDczOSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.nZl_YEBR6x8oTskAeFHJaFB9FHDcYupcmllY6m8Z39A        2026-06-17 16:06:31.611924+00   2026-06-24 16:06:31+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 4546ac292d1f46c097220c80df994739
92      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxODMxMCwiaWF0IjoxNzgxNzEzNTEwLCJqdGkiOiI0ZWRiZDY0NWIwMjE0OTk3YjEwMzE4ZWJhNmYxMTVlYSIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.GSIMT2deBLCIuOmNO-ZmKxifIYNKecmttvtBVVqpurk        2026-06-17 16:25:10.58147+00    2026-06-24 16:25:10+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 4edbd645b0214997b10318eba6f115ea
93      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxOTY5MywiaWF0IjoxNzgxNzE0ODkzLCJqdGkiOiIxYTFmNGQwYWU4NTQ0MGUwOTkxN2JjMzM2MWRmNTE3MiIsInVzZXJfaWQiOiI4MzI5NTljNi0zZGY2LTRjZmItOGMyMi1lNWU3ZmE1ZWJjZDQifQ.HpEqXypGKS_1aM3p3T3kfS373sQTAt6p-o7QbLdm8Qo        2026-06-17 16:48:13.181824+00   2026-06-24 16:48:13+00  832959c6-3df6-4cfb-8c22-e5e7fa5ebcd4 1a1f4d0ae85440e09917bc3361df5172
94      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMxOTgzNiwiaWF0IjoxNzgxNzE1MDM2LCJqdGkiOiJhNzQyNzcxYmVlYzY0ZGQ1Yjk5YjAyYmE0ZjlhNGM5MCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.4Sh9l3aQm0B5KdKOcfOonobRtppJbOB_yysu49A3B8w        2026-06-17 16:50:36.961035+00   2026-06-24 16:50:36+00  77e0d595-d6da-4158-8f75-2e4f9947e156 a742771beec64dd5b99b02ba4f9a4c90
95      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyMTE0NiwiaWF0IjoxNzgxNzE2MzQ2LCJqdGkiOiJlYzhjYjM3YWQ0OWE0N2FjOThjMDI1ZGIxM2JmYWI4ZCIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.GMt05M9R1VBzigdTw8QaIbFpJ5RsXlEsUmvGOymuseI        2026-06-17 17:12:26.244318+00   2026-06-24 17:12:26+00  77e0d595-d6da-4158-8f75-2e4f9947e156 ec8cb37ad49a47ac98c025db13bfab8d
96      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyMTcwNCwiaWF0IjoxNzgxNzE2OTA0LCJqdGkiOiI3ODU2ODZkZDk1ODY0NGYzOTVmOGExYTBiNjBlZGZhNiIsInVzZXJfaWQiOiJjNjBmM2E2OC0wZjZkLTQxY2YtYWQ0MC1hZDFkZTI4NDNiYzEifQ.KNram0JFriCcin63xMXiD0wsfUa_XqLWE_WMiZ4HOQI        2026-06-17 17:21:44.248998+00   2026-06-24 17:21:44+00  c60f3a68-0f6d-41cf-ad40-ad1de2843bc1 785686dd958644f395f8a1a0b60edfa6
97      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNDM0NCwiaWF0IjoxNzgxNzE5NTQ0LCJqdGkiOiI3MjM0MWIyMGZlZTM0YjM0YmJlMmJhMTkxNjYwYzViMyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.D2jSzIz9__zW1swBXaF4B0q8CPRLHqAUZqC56XWqA_c        2026-06-17 18:05:44.716338+00   2026-06-24 18:05:44+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 72341b20fee34b34bbe2ba191660c5b3
98      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNDg0NSwiaWF0IjoxNzgxNzIwMDQ1LCJqdGkiOiI0YzIxZTA3YmFiNjI0ZTY0OWY4NTNiYjk0MTQ2NzM1NCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.qYQoZ8PCPo15gLlMGOxZhNMf-ZdEXNDtKAtK5wn5p5w        2026-06-17 18:14:05.906201+00   2026-06-24 18:14:05+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 4c21e07bab624e649f853bb941467354
99      eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNTAyNSwiaWF0IjoxNzgxNzIwMjI1LCJqdGkiOiI3MTcwMDEyOTUxYWI0NDRhODhkODU1ZjE2ZjM4ZmE2OSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.t0NTlvJJ6RvqSv3ihVJjGrPH2Ik8yt7UEBhskHnL0G4        2026-06-17 18:17:05.993164+00   2026-06-24 18:17:05+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 7170012951ab444a88d855f16f38fa69
100     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNTExNywiaWF0IjoxNzgxNzIwMzE3LCJqdGkiOiIwMjg4NWU0NmU5NTc0YjU0OGNlNjRhZWNkYjlkYmQzZiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.JrE4BnzPqb0fsjqo1SkH3999MQ-83OqJyyYp8_hSLS0        2026-06-17 18:18:37.404436+00   2026-06-24 18:18:37+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 02885e46e9574b548ce64aecdb9dbd3f
101     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNjYwMCwiaWF0IjoxNzgxNzIxODAwLCJqdGkiOiI0NzU4MDBlOTMyMWE0NWZjYTI1ODMyMjVjYmZmMDJlYyIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.HMC3gE6XynmVB4cNaJczoBAF0BqClOvQJKsc3AQmbn8        2026-06-17 18:43:20.446209+00   2026-06-24 18:43:20+00  77e0d595-d6da-4158-8f75-2e4f9947e156 475800e9321a45fca2583225cbff02ec
102     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNjczNCwiaWF0IjoxNzgxNzIxOTM0LCJqdGkiOiJjNDZlOThkMmY1OWQ0OGUyOTQ0YTAxMTU3MjFiYTJmNSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.RRvRhAYQAOXWcxIeLa-GFqd73Nevub5hemWKmMWuc-E        2026-06-17 18:45:34.050319+00   2026-06-24 18:45:34+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 c46e98d2f59d48e2944a0115721ba2f5
103     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyNzM2OCwiaWF0IjoxNzgxNzIyNTY4LCJqdGkiOiI4MGMwOGI0NTkzYTY0NGE2OTMzY2EwNGRkZjA3Mjc3YyIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.VEksPrxKGijTx2sqT3mUpvmTPK4pz1afqel46fTX7UE        2026-06-17 18:56:08.201908+00   2026-06-24 18:56:08+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd 80c08b4593a644a6933ca04ddf07277c
104     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMyOTg1NCwiaWF0IjoxNzgxNzI1MDU0LCJqdGkiOiJhNjBlNzY5ZGY0OTk0MmVhODgwMzcxMjdhNTQ4M2VlMyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.3xJ2SH_RahnpLryBgzxxn5jqhQmBGuablGRDiwzuID4        2026-06-17 19:37:34.436676+00   2026-06-24 19:37:34+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea a60e769df49942ea88037127a5483ee3
105     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMDIyOSwiaWF0IjoxNzgxNzI1NDI5LCJqdGkiOiI2ZThjOTQwMTMzMTU0MDljYjc0ZTNiYmY4ZGQ5NDA5MCIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.1XbQzqlU_1AnUzBnwTve4T8Vjvo6a2jlRIEYYLYT-DE        2026-06-17 19:43:49.949466+00   2026-06-24 19:43:49+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 6e8c94013315409cb74e3bbf8dd94090
106     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMDcwMywiaWF0IjoxNzgxNzI1OTAzLCJqdGkiOiIyZjI2YThhYTQ4Yzc0ZWM0OWM0OWZkNzI1OTQ3ZmQwYyIsInVzZXJfaWQiOiI3N2UwZDU5NS1kNmRhLTQxNTgtOGY3NS0yZTRmOTk0N2UxNTYifQ.zV2aG1I9JrmUGw8e82-YudYST2imrIjbszs3RfB5uos        2026-06-17 19:51:43.491937+00   2026-06-24 19:51:43+00  77e0d595-d6da-4158-8f75-2e4f9947e156 2f26a8aa48c74ec49c49fd725947fd0c
107     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMzgyMywiaWF0IjoxNzgxNzI5MDIzLCJqdGkiOiI4ZDBjMzU0OTEwYjI0NDEzOWU5NGVkN2ZmN2IxMmQ3MSIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.QqFjWzoJLqE1-IdUn2q3ogDYqlyFiIshWII-Uyj2oNU        2026-06-17 20:43:43.788578+00   2026-06-24 20:43:43+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 8d0c354910b244139e94ed7ff7b12d71
108     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMzgzMSwiaWF0IjoxNzgxNzI5MDMxLCJqdGkiOiI5YzRhZDNkMDIyMjA0ZWJhYjdkMDYxMGVkNTRlMTYwYSIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.zH1ig2Y9pDVmJEF2CrKriak1BQJwmGzKglg7EdRyVTE        2026-06-17 20:43:51.407338+00   2026-06-24 20:43:51+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 9c4ad3d022204ebab7d0610ed54e160a
109     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMzgzNywiaWF0IjoxNzgxNzI5MDM3LCJqdGkiOiI4MTc0NTBmYmJiODY0MmZlYThiM2ZkMjNiZTUyYzdmZCIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.cDuj-63NKBl-YhDmL1YVpeItZWbcbxK5TZkZM8SPQeo        2026-06-17 20:43:57.725916+00   2026-06-24 20:43:57+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 817450fbbb8642fea8b3fd23be52c7fd
110     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMzg0NSwiaWF0IjoxNzgxNzI5MDQ1LCJqdGkiOiJhNzk2N2U0YTJmYmY0YjIzODFjNWM3ZjZiNzIzMTM5YiIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.zzOJBl1XAeq0BsRbyo-PA1ybLB80rSnMCOq3vK2Vnzg        2026-06-17 20:44:05.421403+00   2026-06-24 20:44:05+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c a7967e4a2fbf4b2381c5c7f6b723139b
111     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzMzg4MiwiaWF0IjoxNzgxNzI5MDgyLCJqdGkiOiJkNTZjNWZlOTQ3MTk0NGVjYTg2ZTUxZDZiMTliYjg0NCIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.41JFnxYOX8iB5OuZAdgDJ0uB8o57io6xlAmppfQyrQU        2026-06-17 20:44:42.772912+00   2026-06-24 20:44:42+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c d56c5fe9471944eca86e51d6b19bb844
112     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzNTIzOCwiaWF0IjoxNzgxNzMwNDM4LCJqdGkiOiJhNDllMTQ1ZGQyYWI0NmY2OGIwMzJhOWM2ODc1ZGRiYyIsInVzZXJfaWQiOiI1ZGRkY2IxNi00OWQyLTRkOWMtYTdjYS1lMTM2OGJiZTFkZGQifQ.Bpi7SI-kSji0A25WnY39QxGnSvpWvsl54EkYbjcLSkU        2026-06-17 21:07:18.674613+00   2026-06-24 21:07:18+00  5dddcb16-49d2-4d9c-a7ca-e1368bbe1ddd a49e145dd2ab46f68b032a9c6875ddbc
113     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzOTQ4MywiaWF0IjoxNzgxNzM0NjgzLCJqdGkiOiI2NjNlMTc2MjY3MGE0YTY1OWI4NzE5NDA5MWNkNmY3MyIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.1Nh_sogrGYiD35GkKEDg7mNsKHpfwi-9A-h7InwO2vg        2026-06-17 22:18:03.265406+00   2026-06-24 22:18:03+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 663e1762670a4a659b87194091cd6f73
114     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjMzOTk3MSwiaWF0IjoxNzgxNzM1MTcxLCJqdGkiOiI2ZTIzYjNjN2Q2MTM0MzFjODk0ZGE4OTQxZmFkNjVmZSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.z4wEkyHmeI_3WVO-9iiwXdRVBx0g7nB9wHH2MGyfKMU        2026-06-17 22:26:11.488558+00   2026-06-24 22:26:11+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 6e23b3c7d613431c894da8941fad65fe
115     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM0MDk0MywiaWF0IjoxNzgxNzM2MTQzLCJqdGkiOiI1ODhiYzE4ZWVlM2E0ZmMxYjgxZjg1NDNmOTcwNDQ4NCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.yIUwNsPTVU-XQjRSBrgzM2zbEvYHpNGGWtB33MXW3fU        2026-06-17 22:42:23.870143+00   2026-06-24 22:42:23+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 588bc18eee3a4fc1b81f8543f9704484
116     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM0MTAwMiwiaWF0IjoxNzgxNzM2MjAyLCJqdGkiOiI5NjI3YWYxODUzNWY0ZmRkOTdkYjNkOGU1NjQ1M2VhYSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.W3tawYcW-UE1QyPSwUNKRZC6_zZT5b8lfqu1y4NJK1g        2026-06-17 22:43:22.492765+00   2026-06-24 22:43:22+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 9627af18535f4fdd97db3d8e56453eaa
117     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM0MTQ3NCwiaWF0IjoxNzgxNzM2Njc0LCJqdGkiOiIzZmRmYjhmNjIxMDg0MGU1OTlmZTNlNjNhYmQ1MGI0YSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.aJZInvAyZnok8dNzM0aDnN1kzOVVEgOtuuDlbt_PPhk        2026-06-17 22:51:14.926493+00   2026-06-24 22:51:14+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3fdfb8f6210840e599fe3e63abd50b4a
118     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM0NTU3NywiaWF0IjoxNzgxNzQwNzc3LCJqdGkiOiI0ZTBjNjAxMjhjYWY0YjQ5ODI5NjhlNGNiNjVjM2ViNSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.yP87QNpkdSZ042MC14EAtQ41kf04ngTN4fVOPSZ8txQ        2026-06-17 23:59:37.957478+00   2026-06-24 23:59:37+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 4e0c60128caf4b4982968e4cb65c3eb5
119     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3MDIxMywiaWF0IjoxNzgxNzY1NDEzLCJqdGkiOiI1NDNmMTI4MTNjMGM0MWFlYmQ0ZTA4MDc2MjQ0NzYzNiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.qWgGasnBE2PMF_D_YajmKZYExhz-9qeAS7KjU-qQ634        2026-06-18 06:50:13.177666+00   2026-06-25 06:50:13+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 543f12813c0c41aebd4e080762447636
120     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3MDU2NSwiaWF0IjoxNzgxNzY1NzY1LCJqdGkiOiIxZjE2NDZkODliNGQ0ZTA0OWUyYjFhZWRjM2ViZTM3YiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.T2lvxZQuqGlWxZXuKQX37O2iXPibNyXMMX10J69Wlgo        2026-06-18 06:56:05.926122+00   2026-06-25 06:56:05+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 1f1646d89b4d4e049e2b1aedc3ebe37b
121     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3MDU5OCwiaWF0IjoxNzgxNzY1Nzk4LCJqdGkiOiJkYWM4MmE0Zjk1MGM0YTA3ODc4ZDczYzgzNTlkYTllMCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.qvCSyf9RqPTe2MsFts_QZ_0wy6RSp_YLowv0YfLpyjg        2026-06-18 06:56:38.885618+00   2026-06-25 06:56:38+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea dac82a4f950c4a07878d73c8359da9e0
122     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3NjE0MSwiaWF0IjoxNzgxNzcxMzQxLCJqdGkiOiIyZWQxODk5ZmRlNTI0ZDQwYThiNWRjNmRlNWVlOWRiNyIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.fd5TZWW5h2Vr1JAmVKuvgsTDXabOD3a_4ReBIXIOEyo        2026-06-18 08:29:01.814482+00   2026-06-25 08:29:01+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 2ed1899fde524d40a8b5dc6de5ee9db7
123     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3NjI0MywiaWF0IjoxNzgxNzcxNDQzLCJqdGkiOiI3MjE2MmUyNWRiMzI0ZWI2ODY1ODg2MjhjMGFiNmUwNiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.bNZZ3CKQ5RuHLiN-sv_jv8ZFm-WGPoqrMq5Kl0LB8iQ        2026-06-18 08:30:43.884212+00   2026-06-25 08:30:43+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 72162e25db324eb686588628c0ab6e06
124     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM3OTYxNSwiaWF0IjoxNzgxNzc0ODE1LCJqdGkiOiI0NTZiYjMyNDA3ZjY0Yjg3ODU2YTU2ZTJlYTRlNDNkYSIsInVzZXJfaWQiOiI5OTY1Y2JlMS0zYTI4LTRjMTUtOTdjNy0wOGJiNTMyZGJiOGMifQ.HGAUGvncCXRM3xyC-5taz3BLjrnYcMbJjqMcrxANV8I        2026-06-18 09:26:55.51892+00    2026-06-25 09:26:55+00  9965cbe1-3a28-4c15-97c7-08bb532dbb8c 456bb32407f64b87856a56e2ea4e43da
125     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4MzAzOCwiaWF0IjoxNzgxNzc4MjM4LCJqdGkiOiJhZWNmY2Y1ODUwY2M0MTZiYjExMGUyNTkwZTAxZWI5YSIsInVzZXJfaWQiOiJhODdhZGM3Yi01ZGEyLTRjNGEtYjdkMS03ZWRhZWFjZDcxNDYifQ.CHdP3nf_fSssUu1Ej-Me9jxl-8tsiroGo060f-Ix_Rk        2026-06-18 10:23:58.195568+00   2026-06-25 10:23:58+00  a87adc7b-5da2-4c4a-b7d1-7edaeacd7146 aecfcf5850cc416bb110e2590e01eb9a
126     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NTk3MywiaWF0IjoxNzgxNzgxMTczLCJqdGkiOiJjOGIzMGFmNmM4Mzk0MTdiYmZjMGViYWQ5MmFkMDhhNCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.Yuxiv-acM2IiHKtz95MAib-L8mX46dRhxKeowbse5kA        2026-06-18 11:12:53.673137+00   2026-06-25 11:12:53+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 c8b30af6c839417bbfc0ebad92ad08a4
127     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NjE5NSwiaWF0IjoxNzgxNzgxMzk1LCJqdGkiOiI0NTczNzA0Yjg5MTg0ZGVjOTNlZDNkZGU4YmUxMjljZSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.YNDyYyxmet33OmtWUMtZpJtaehkUM4obmceutE2P1Yk        2026-06-18 11:16:35.497521+00   2026-06-25 11:16:35+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 4573704b89184dec93ed3dde8be129ce
128     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NjI4MywiaWF0IjoxNzgxNzgxNDgzLCJqdGkiOiIyYmM4N2E1OTdjYmM0NzQ1YjUzYmNhZmVlM2NlMjliYiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.8WSoFnCE1xOoLzSXXIn9ZJ-TNrNbpFOuy4yrAlRPS9s        2026-06-18 11:18:03.274061+00   2026-06-25 11:18:03+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 2bc87a597cbc4745b53bcafee3ce29bb
129     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NjQ3NywiaWF0IjoxNzgxNzgxNjc3LCJqdGkiOiJmNTkwNjIxZTMxNWM0ZjA1YTI3ZWIwNmIwMGI2YTg0MSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.y_b1tZ6XaN9O3oBfByObrkZyN-k6k8qYlP0XcUY4EpQ        2026-06-18 11:21:17.418438+00   2026-06-25 11:21:17+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea f590621e315c4f05a27eb06b00b6a841
130     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NjY1MywiaWF0IjoxNzgxNzgxODUzLCJqdGkiOiJmYjk5Mjk2MThmYmI0Zjg4OTk1MDQ5YmE3NmMwODRiYSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.0oheFAZA84jyMN_uAx37eAqDw6hZpn1kRxYV60Ds_l4        2026-06-18 11:24:13.845087+00   2026-06-25 11:24:13+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea fb9929618fbb4f88995049ba76c084ba
131     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM4NzE3NiwiaWF0IjoxNzgxNzgyMzc2LCJqdGkiOiI4NGU3YTgyMTljMWU0MDFiYTBmOWNlNDdkMzIwMjkxYiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.4QWjFwssMAc4tBkFg49FpE90TUWiHtM8bXNawwuq4_c        2026-06-18 11:32:56.873821+00   2026-06-25 11:32:56+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 84e7a8219c1e401ba0f9ce47d320291b
132     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5MzYzNCwiaWF0IjoxNzgxNzg4ODM0LCJqdGkiOiI3M2YwYzIzMDZhOTc0NDNlOWZjNzFhODE3ZjAwMTY4MiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.um6Lv0qmY17xSnNx6_AjdeAdXE-rNC3KszYKEAWSqqE        2026-06-18 13:20:34.277322+00   2026-06-25 13:20:34+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 73f0c2306a97443e9fc71a817f001682
133     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5Mzc0MSwiaWF0IjoxNzgxNzg4OTQxLCJqdGkiOiIxZmI1NWVlMjVjNDI0ZmRhYThkZDJmMWZjMWFkZWFhZSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.ny4xX7XSkXTBDFGWrZuTNdRJHdkenyARI-sNRvYEqgY        2026-06-18 13:22:21.925177+00   2026-06-25 13:22:21+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 1fb55ee25c424fdaa8dd2f1fc1adeaae
134     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5MzkxNiwiaWF0IjoxNzgxNzg5MTE2LCJqdGkiOiIzYjM4ZDIyZTNiYjQ0Nzc3OTI5YzVlNWNhMTMwZmM2NiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.y2yqDJ5g03Jg3QOPOMhlqMc1kWfVp9iBdowg-oiLVB8        2026-06-18 13:25:16.518079+00   2026-06-25 13:25:16+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3b38d22e3bb44777929c5e5ca130fc66
135     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5OTEzNCwiaWF0IjoxNzgxNzk0MzM0LCJqdGkiOiJkZmM4NTRjMzEwYmE0YzJhOTQ1NTJjY2Y0Yzg4ZmVmNSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.IZIEwtaxA2BZRJAys_P7S4FvYfF1CeNhoIcdjIp7w4k        2026-06-18 14:52:14.431077+00   2026-06-25 14:52:14+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 dfc854c310ba4c2a94552ccf4c88fef5
136     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5OTMxMSwiaWF0IjoxNzgxNzk0NTExLCJqdGkiOiI5OGQxNmY4NzI0Zjg0ODJmOGU5Zjk5MDYyZGY4NmU2MCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.K9RBIIxh5ZTeAc_OaIEoT24QSgnaIA_HBIl__5Iv-Wo        2026-06-18 14:55:11.348209+00   2026-06-25 14:55:11+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 98d16f8724f8482f8e9f99062df86e60
137     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5OTgwNCwiaWF0IjoxNzgxNzk1MDA0LCJqdGkiOiJkNjg5NmQ4ODg3Yjc0MzM3YjkzYzU0NDIyNTkxZjYyNiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.nknPoDgEFJNJseEaDEykR5e4567ZYIo68znIJwVqe-4        2026-06-18 15:03:24.812284+00   2026-06-25 15:03:24+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d6896d8887b74337b93c54422591f626
138     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5OTg3MSwiaWF0IjoxNzgxNzk1MDcxLCJqdGkiOiIzYWU4OWVlMjJkYmI0ZDJhYTIzZGE1ZmI0NmYyNjE2ZCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.zVrPOhLL1zPJCrkEcQkhgx1cgvcxmClgFD0Wl0mBLTI        2026-06-18 15:04:31.420269+00   2026-06-25 15:04:31+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3ae89ee22dbb4d2aa23da5fb46f2616d
139     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjM5OTkxNywiaWF0IjoxNzgxNzk1MTE3LCJqdGkiOiIxYTk0NjQwMWM0MjM0Y2E4OGQ3YzVkNjRjNDRkMzgwYSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.lusegZyDm_W5RJ87K_my3vKcgsfyKjGkg_Vdskn2hfE        2026-06-18 15:05:17.550585+00   2026-06-25 15:05:17+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1a946401c4234ca88d7c5d64c44d380a
140     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMDAxNSwiaWF0IjoxNzgxNzk1MjE1LCJqdGkiOiJjYTBiZDJiZmNlMjE0OGY2ODE1ZmRiYWY2MmY4NDQ5NyIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.nOVZtreWLlEUJSkBmsIVvspdVoz5lPAtdK_uuo4hjyE        2026-06-18 15:06:55.142955+00   2026-06-25 15:06:55+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ca0bd2bfce2148f6815fdbaf62f84497
141     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMDgzOSwiaWF0IjoxNzgxNzk2MDM5LCJqdGkiOiIzYjViMzRhOWYyYTM0ZDM2YjkxMDVlNTJlYjA3ZjlmMiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.eDAr7S0tVKpA3mKR_xVP5ipLCmnIbv1g0FJL8i8enS4        2026-06-18 15:20:39.993492+00   2026-06-25 15:20:39+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 3b5b34a9f2a34d36b9105e52eb07f9f2
142     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMDk0NCwiaWF0IjoxNzgxNzk2MTQ0LCJqdGkiOiI4ZDA1ZTg2MDFmMWE0MDVhYTYxN2U4NzNjNTBhNGRjNSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.9Fj7S0lkOdiC0X5dIOu6oFYJKPD-vA6dzsao-scrG38        2026-06-18 15:22:24.881861+00   2026-06-25 15:22:24+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 8d05e8601f1a405aa617e873c50a4dc5
143     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMDk5MCwiaWF0IjoxNzgxNzk2MTkwLCJqdGkiOiJhMDZiNGNlZjM1MTA0MTc2OTA0Yzk4NzI0ZTg4MDQ4ZiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.hStZvYqx3k_tv_8Cx9vOubiucVf9Z9uaPMc8sNc5IT0        2026-06-18 15:23:10.360924+00   2026-06-25 15:23:10+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea a06b4cef35104176904c98724e88048f
144     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMTIxNiwiaWF0IjoxNzgxNzk2NDE2LCJqdGkiOiI4MDZmYzA4MmNmNmU0OTQ0YWNhMTU3NjFjNGUzMDEyYSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.8J9vum1Mish4IiB7MP_Ku4zN1b-AGpq7tSUXm2ZdhXE        2026-06-18 15:26:56.618471+00   2026-06-25 15:26:56+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 806fc082cf6e4944aca15761c4e3012a
145     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMTMxNiwiaWF0IjoxNzgxNzk2NTE2LCJqdGkiOiIwNTVkYTA4NGUwYmY0OGYzYTVmZWExYTk1NjczZGEyZSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.6tYr3Kj7DqDRHUKIR0QWUO-KXNkOm8KK3m3ZazjLMN4        2026-06-18 15:28:36.75202+00    2026-06-25 15:28:36+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 055da084e0bf48f3a5fea1a95673da2e
146     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMTgxOSwiaWF0IjoxNzgxNzk3MDE5LCJqdGkiOiIyOWU4ZGRiZDVmMmM0MWIwYjlhYmQzMjAxMGFlYjViNSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.M3ZMGTa0Cfo70DGOoQau7JrOXVZTEPztw8on5wCtK7g        2026-06-18 15:36:59.291374+00   2026-06-25 15:36:59+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 29e8ddbd5f2c41b0b9abd32010aeb5b5
147     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMjE1MywiaWF0IjoxNzgxNzk3MzUzLCJqdGkiOiJjOGY4YmFlMWI3NjA0ZmE0YTYyMWQ1M2E5YjQ5MGEzZSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.fnkTVnSSJedCEc8Rm7SaTOVrTTKx5nQFLD-1Y-81q1o        2026-06-18 15:42:33.0622+00     2026-06-25 15:42:33+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 c8f8bae1b7604fa4a621d53a9b490a3e
148     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMjIwMCwiaWF0IjoxNzgxNzk3NDAwLCJqdGkiOiIzYjk4YzBhN2ZhZGU0NmM1YmQ1YWRmN2M3NWEzYzVmOCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.BuV6cYnuTKJ8mZfPvTshgr_NbcCTM9JzISy8D74OVwk        2026-06-18 15:43:20.499502+00   2026-06-25 15:43:20+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 3b98c0a7fade46c5bd5adf7c75a3c5f8
149     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwMjIxMywiaWF0IjoxNzgxNzk3NDEzLCJqdGkiOiIwM2FlMjc4NDUxNWI0ZTI1OGI3MjhmODVmOWFhMzI4ZSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.yOvpgy8q-D9zzciZ1eo-IWqKinHwHdjxTe7uTo0JYCw        2026-06-18 15:43:33.022181+00   2026-06-25 15:43:33+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 03ae2784515b4e258b728f85f9aa328e
150     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNjU2NiwiaWF0IjoxNzgxODAxNzY2LCJqdGkiOiJiYmUyZDM4ZDc3NDE0ZTU3OTUzNTY5OWFkYmFkYjQxNiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.JHGbulreSN6rmK4HfZq8tqhaG05eYhDXCNmAhiHOMZM        2026-06-18 16:56:06.472654+00   2026-06-25 16:56:06+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 bbe2d38d77414e579535699adbadb416
151     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNjYxMSwiaWF0IjoxNzgxODAxODExLCJqdGkiOiJiYzYzZWM2NDQ4NzQ0ZGJkYTcyMTQ5YTg0YmEzZDk2ZiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.T9h7cVMurPaJCvFZWIPO4PjJpIyjAxAEfyZoXOsAmSU        2026-06-18 16:56:51.5019+00     2026-06-25 16:56:51+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea bc63ec6448744dbda72149a84ba3d96f
152     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNjcxMSwiaWF0IjoxNzgxODAxOTExLCJqdGkiOiI5OTc2MTc0YzYxZWY0YTRjYjU5YjYyY2EzYThmZmE2OCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.v1uup3bqbpjm8Mc6lagZ-Bxcqs63mgTchv2J46HJnFQ        2026-06-18 16:58:31.660248+00   2026-06-25 16:58:31+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 9976174c61ef4a4cb59b62ca3a8ffa68
153     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNjc4MSwiaWF0IjoxNzgxODAxOTgxLCJqdGkiOiJhMjk0NDZmN2FiNDk0Mzk5YWMyNjY0OWU2ZDE3ODU5NyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.uR9ucyUHCusxDopKZ-yzNhCpk1Zga3GxX_5fLyfekOQ        2026-06-18 16:59:41.549618+00   2026-06-25 16:59:41+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea a29446f7ab494399ac26649e6d178597
154     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzE3NSwiaWF0IjoxNzgxODAyMzc1LCJqdGkiOiIyY2FjODM0OTAyZDQ0ZjUyYWNmNDcxMGYzMDQxZDNkOCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.4Qct4yzzDMQnIH7ks5WrvrVFD2mdAtDcLGSiRoqiQs8        2026-06-18 17:06:15.968637+00   2026-06-25 17:06:15+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 2cac834902d44f52acf4710f3041d3d8
155     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzI0OSwiaWF0IjoxNzgxODAyNDQ5LCJqdGkiOiI1MmFmNzRkNGUzY2I0ZTUzYWUzMmE5OTZjYmNiNGRjMiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.k5p4XGZbqj09tQmk6hzs2hobCcdDYJVOB7fNxit8t38        2026-06-18 17:07:29.319476+00   2026-06-25 17:07:29+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 52af74d4e3cb4e53ae32a996cbcb4dc2
156     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzI5MCwiaWF0IjoxNzgxODAyNDkwLCJqdGkiOiJkN2ZkZDhjZTk3YmE0ZTU0YTczYzQ5ZDcyMmZmZjUzMCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.RNk5mp3ogR6nKJiMlPk2VIcaPgwssIoM_QUZRkCAwuQ        2026-06-18 17:08:10.504894+00   2026-06-25 17:08:10+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 d7fdd8ce97ba4e54a73c49d722fff530
157     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzMwMCwiaWF0IjoxNzgxODAyNTAwLCJqdGkiOiI5MGY0YTVhYzA5OTE0YjkyOWM5MGNjYTVlYTc1NzNmYiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.atdQjlCWL2clvvDCWOAeDaKEwj_MQGU9S9WUzbn3x-c        2026-06-18 17:08:20.051514+00   2026-06-25 17:08:20+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 90f4a5ac09914b929c90cca5ea7573fb
158     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzMwOCwiaWF0IjoxNzgxODAyNTA4LCJqdGkiOiJkNDNhNTBjNTU1ODQ0MzBkYTcyZGFmYTRlMjA2MTc3MyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.yFnjubZNKe-q-uixz5U5q1mIYnsJHtOQ7U3mLbedDtw        2026-06-18 17:08:28.815805+00   2026-06-25 17:08:28+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea d43a50c55584430da72dafa4e2061773
159     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzQ3OSwiaWF0IjoxNzgxODAyNjc5LCJqdGkiOiI2NzYyNjFmMWZmYTA0MmYyOWUzZTUzOTQxZTE0YTVlOCIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.lCM5An5epsEzPVv-sBIgNQv78BTkGC7ide05aTLAR08        2026-06-18 17:11:19.674007+00   2026-06-25 17:11:19+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 676261f1ffa042f29e3e53941e14a5e8
160     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQwNzUyOCwiaWF0IjoxNzgxODAyNzI4LCJqdGkiOiJmODEyYzk3YjQxYjM0OWQ4OGFmOGFjYmNjOTRlMmQ5NSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ._bbEpWk4DeWgHBVmyRyi3VKVa4uoY5tS129aMQd46pM        2026-06-18 17:12:08.407656+00   2026-06-25 17:12:08+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea f812c97b41b349d88af8acbcc94e2d95
161     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQxMjIxMywiaWF0IjoxNzgxODA3NDEzLCJqdGkiOiIxMTU5ZjlkZTYxZWQ0NzBkOTVkNWM2ODkwOTJmYzZjNyIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.8OL5n-vM94xnz7EqPuWOkxMYEVVIbXSOrHH2YSQtqZs        2026-06-18 18:30:13.071788+00   2026-06-25 18:30:13+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 1159f9de61ed470d95d5c689092fc6c7
162     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNDI0NiwiaWF0IjoxNzgxODE5NDQ2LCJqdGkiOiIwNWUxNDBjMjlhYTE0Y2U3OGJiNGQzY2U3Njk1NzM5ZiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.5kPvdDVT_ssX95-vqgGtRIgiLKrvPr1f-XXCoPtbw1g        2026-06-18 21:50:46.45074+00    2026-06-25 21:50:46+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 05e140c29aa14ce78bb4d3ce7695739f
163     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjY1OSwiaWF0IjoxNzgxODIxODU5LCJqdGkiOiI1MmM5MzFiYTI3OTQ0YjBhOTFmZGQ2MjJiYjhkNWRjMCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.e80lQs7mnxdOfYtSxN8g3hIkO2kp5m6vt2zARyYFp68        2026-06-18 22:30:59.224992+00   2026-06-25 22:30:59+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 52c931ba27944b0a91fdd622bb8d5dc0
164     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjczMywiaWF0IjoxNzgxODIxOTMzLCJqdGkiOiJmZjU5OTczYzdlMjQ0NmQ1YjcwNmUzNGIwNzBlNmY1MSIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.fgKTUE2LVrfIPKw4CayWtGwOKFOu46ah1OaBBRMO9n8        2026-06-18 22:32:13.258247+00   2026-06-25 22:32:13+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 ff59973c7e2446d5b706e34b070e6f51
166     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjc2MywiaWF0IjoxNzgxODIxOTYzLCJqdGkiOiI2NzI5ZjVhYmI0MTA0MTQ5OTBkYzBjODE3ZDM5OTk1OCIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.znzxhrSnCgIHchTtDV46cObVED3cbCzGfH180RfGgfs        2026-06-18 22:32:43.031707+00   2026-06-25 22:32:43+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 6729f5abb410414990dc0c817d399958
168     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjg3MywiaWF0IjoxNzgxODIyMDczLCJqdGkiOiJkY2M2M2E4ZGRhODI0NGQyOWJlNWQ1ZDkxNTE3NWY5ZiIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.8EZ53xM1ZsejbRhyCdEH1mkX1wMu6pinc9VlN84gBBo        2026-06-18 22:34:33.756996+00   2026-06-25 22:34:33+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea dcc63a8dda8244d29be5d5d915175f9f
165     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjc1MywiaWF0IjoxNzgxODIxOTUzLCJqdGkiOiI4NDM2NTcwMzA4ZTA0NjE2OTc1MTFiYzJkOWFlMDYyMSIsInVzZXJfaWQiOiI1OTM1MzlhOC1hZTNiLTQ4NGYtYWIxMC1lZjZmZDllOGU2ZWEifQ.-30McnlIU3LsaJDGBGR2UFnFZAWR7dgbtjaOXy1yg6c        2026-06-18 22:32:33.2386+00     2026-06-25 22:32:33+00  593539a8-ae3b-484f-ab10-ef6fd9e8e6ea 8436570308e0461697511bc2d9ae0621
167     eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0b2tlbl90eXBlIjoicmVmcmVzaCIsImV4cCI6MTc4MjQyNjgwMSwiaWF0IjoxNzgxODIyMDAxLCJqdGkiOiJjNDU5MWE1YWRmMmQ0NTBhOWU4NGQ0YTQ5MzcwNWI1MiIsInVzZXJfaWQiOiI1ZGE4ZDI3OS0yYjZmLTRiY2MtYmM3Yi05NGI3YTk4NjVmMjUifQ.JHD76a6mvhPeHNvvZk0VRluj6PFu-lc-4-Y09xAnQrs        2026-06-18 22:33:21.685019+00   2026-06-25 22:33:21+00  5da8d279-2b6f-4bcc-bc7b-94b7a9865f25 c4591a5adf2d450a9e84d4a493705b52
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 148, true);


--
-- Name: btl_campagne_hotesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_campagne_hotesses_id_seq', 13, true);


--
-- Name: btl_campagne_produits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_campagne_produits_id_seq', 1, false);


--
-- Name: btl_campagne_superviseurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_campagne_superviseurs_id_seq', 3, true);


--
-- Name: btl_promotion_goodies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_promotion_goodies_id_seq', 1, false);


--
-- Name: btl_promotion_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_promotion_sites_id_seq', 1, true);


--
-- Name: btl_remoteuser_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_remoteuser_groups_id_seq', 1, false);


--
-- Name: btl_remoteuser_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_remoteuser_user_permissions_id_seq', 1, false);


--
-- Name: btl_site_hotesses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_site_hotesses_id_seq', 16, true);


--
-- Name: btl_site_superviseurs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.btl_site_superviseurs_id_seq', 3, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 37, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 58, true);


--
-- Name: token_blacklist_blacklistedtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_blacklistedtoken_id_seq', 82, true);


--
-- Name: token_blacklist_outstandingtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.token_blacklist_outstandingtoken_id_seq', 168, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: btl_campagne_hotesses btl_campagne_hotesses_campagne_id_remoteuser_id_8cc9a875_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_hotesses
    ADD CONSTRAINT btl_campagne_hotesses_campagne_id_remoteuser_id_8cc9a875_uniq UNIQUE (campagne_id, remoteuser_id);


--
-- Name: btl_campagne_hotesses btl_campagne_hotesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_hotesses
    ADD CONSTRAINT btl_campagne_hotesses_pkey PRIMARY KEY (id);


--
-- Name: btl_campagne btl_campagne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne
    ADD CONSTRAINT btl_campagne_pkey PRIMARY KEY (id);


--
-- Name: btl_campagne_produits btl_campagne_produits_campagne_id_produit_id_fa04f82a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_produits
    ADD CONSTRAINT btl_campagne_produits_campagne_id_produit_id_fa04f82a_uniq UNIQUE (campagne_id, produit_id);


--
-- Name: btl_campagne_produits btl_campagne_produits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_produits
    ADD CONSTRAINT btl_campagne_produits_pkey PRIMARY KEY (id);


--
-- Name: btl_campagne_superviseurs btl_campagne_superviseur_campagne_id_remoteuser_i_d1b7c8bd_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_superviseurs
    ADD CONSTRAINT btl_campagne_superviseur_campagne_id_remoteuser_i_d1b7c8bd_uniq UNIQUE (campagne_id, remoteuser_id);


--
-- Name: btl_campagne_superviseurs btl_campagne_superviseurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_superviseurs
    ADD CONSTRAINT btl_campagne_superviseurs_pkey PRIMARY KEY (id);


--
-- Name: btl_degustation btl_degustation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_degustation
    ADD CONSTRAINT btl_degustation_pkey PRIMARY KEY (id);


--
-- Name: btl_entreprise btl_entreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_entreprise
    ADD CONSTRAINT btl_entreprise_pkey PRIMARY KEY (id);


--
-- Name: btl_entreprise btl_entreprise_user_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_entreprise
    ADD CONSTRAINT btl_entreprise_user_id_key UNIQUE (user_id);


--
-- Name: btl_gaingoodie btl_gaingoodie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_pkey PRIMARY KEY (id);


--
-- Name: btl_gainpromotion btl_gainpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gainpromotion
    ADD CONSTRAINT btl_gainpromotion_pkey PRIMARY KEY (id);


--
-- Name: btl_goodie btl_goodie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_goodie
    ADD CONSTRAINT btl_goodie_pkey PRIMARY KEY (id);


--
-- Name: btl_historicalcampagne btl_historicalcampagne_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalcampagne
    ADD CONSTRAINT btl_historicalcampagne_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicaldegustation btl_historicaldegustation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicaldegustation
    ADD CONSTRAINT btl_historicaldegustation_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalentreprise btl_historicalentreprise_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalentreprise
    ADD CONSTRAINT btl_historicalentreprise_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalgaingoodie btl_historicalgaingoodie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgaingoodie
    ADD CONSTRAINT btl_historicalgaingoodie_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalgainpromotion btl_historicalgainpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgainpromotion
    ADD CONSTRAINT btl_historicalgainpromotion_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalgoodie btl_historicalgoodie_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgoodie
    ADD CONSTRAINT btl_historicalgoodie_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalobjectifsite btl_historicalobjectifsite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalobjectifsite
    ADD CONSTRAINT btl_historicalobjectifsite_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalproduit btl_historicalproduit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalproduit
    ADD CONSTRAINT btl_historicalproduit_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalpromotion btl_historicalpromotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalpromotion
    ADD CONSTRAINT btl_historicalpromotion_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalrapportjournalier btl_historicalrapportjournalier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalrapportjournalier
    ADD CONSTRAINT btl_historicalrapportjournalier_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalremoteuser btl_historicalremoteuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalremoteuser
    ADD CONSTRAINT btl_historicalremoteuser_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalsite btl_historicalsite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalsite
    ADD CONSTRAINT btl_historicalsite_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalsiteproduitprix btl_historicalsiteproduitprix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalsiteproduitprix
    ADD CONSTRAINT btl_historicalsiteproduitprix_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalstockgoodiesite btl_historicalstockgoodiesite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalstockgoodiesite
    ADD CONSTRAINT btl_historicalstockgoodiesite_pkey PRIMARY KEY (history_id);


--
-- Name: btl_historicalvente btl_historicalvente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalvente
    ADD CONSTRAINT btl_historicalvente_pkey PRIMARY KEY (history_id);


--
-- Name: btl_objectifsite btl_objectifsite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_objectifsite
    ADD CONSTRAINT btl_objectifsite_pkey PRIMARY KEY (id);


--
-- Name: btl_objectifsite btl_objectifsite_site_id_hotesse_id_date_a2ed22ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_objectifsite
    ADD CONSTRAINT btl_objectifsite_site_id_hotesse_id_date_a2ed22ac_uniq UNIQUE (site_id, hotesse_id, date);


--
-- Name: btl_produit btl_produit_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_produit
    ADD CONSTRAINT btl_produit_pkey PRIMARY KEY (id);


--
-- Name: btl_promotion_goodies btl_promotion_goodies_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_goodies
    ADD CONSTRAINT btl_promotion_goodies_pkey PRIMARY KEY (id);


--
-- Name: btl_promotion_goodies btl_promotion_goodies_promotion_id_goodie_id_5079eaa0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_goodies
    ADD CONSTRAINT btl_promotion_goodies_promotion_id_goodie_id_5079eaa0_uniq UNIQUE (promotion_id, goodie_id);


--
-- Name: btl_promotion btl_promotion_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion
    ADD CONSTRAINT btl_promotion_pkey PRIMARY KEY (id);


--
-- Name: btl_promotion_sites btl_promotion_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_sites
    ADD CONSTRAINT btl_promotion_sites_pkey PRIMARY KEY (id);


--
-- Name: btl_promotion_sites btl_promotion_sites_promotion_id_site_id_1b4b0f54_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_sites
    ADD CONSTRAINT btl_promotion_sites_promotion_id_site_id_1b4b0f54_uniq UNIQUE (promotion_id, site_id);


--
-- Name: btl_rapportjournalier btl_rapportjournalier_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_rapportjournalier
    ADD CONSTRAINT btl_rapportjournalier_pkey PRIMARY KEY (id);


--
-- Name: btl_rapportjournalier btl_rapportjournalier_site_id_hotesse_id_date_19021661_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_rapportjournalier
    ADD CONSTRAINT btl_rapportjournalier_site_id_hotesse_id_date_19021661_uniq UNIQUE (site_id, hotesse_id, date);


--
-- Name: btl_remoteuser btl_remoteuser_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser
    ADD CONSTRAINT btl_remoteuser_email_key UNIQUE (email);


--
-- Name: btl_remoteuser_groups btl_remoteuser_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_groups
    ADD CONSTRAINT btl_remoteuser_groups_pkey PRIMARY KEY (id);


--
-- Name: btl_remoteuser_groups btl_remoteuser_groups_remoteuser_id_group_id_3f7570ad_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_groups
    ADD CONSTRAINT btl_remoteuser_groups_remoteuser_id_group_id_3f7570ad_uniq UNIQUE (remoteuser_id, group_id);


--
-- Name: btl_remoteuser btl_remoteuser_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser
    ADD CONSTRAINT btl_remoteuser_pkey PRIMARY KEY (id);


--
-- Name: btl_remoteuser_user_permissions btl_remoteuser_user_perm_remoteuser_id_permission_71391db2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_user_permissions
    ADD CONSTRAINT btl_remoteuser_user_perm_remoteuser_id_permission_71391db2_uniq UNIQUE (remoteuser_id, permission_id);


--
-- Name: btl_remoteuser_user_permissions btl_remoteuser_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_user_permissions
    ADD CONSTRAINT btl_remoteuser_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: btl_remoteuser btl_remoteuser_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser
    ADD CONSTRAINT btl_remoteuser_username_key UNIQUE (username);


--
-- Name: btl_site_hotesses btl_site_hotesses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_hotesses
    ADD CONSTRAINT btl_site_hotesses_pkey PRIMARY KEY (id);


--
-- Name: btl_site_hotesses btl_site_hotesses_site_id_remoteuser_id_82cad11a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_hotesses
    ADD CONSTRAINT btl_site_hotesses_site_id_remoteuser_id_82cad11a_uniq UNIQUE (site_id, remoteuser_id);


--
-- Name: btl_site btl_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site
    ADD CONSTRAINT btl_site_pkey PRIMARY KEY (id);


--
-- Name: btl_site_superviseurs btl_site_superviseurs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_superviseurs
    ADD CONSTRAINT btl_site_superviseurs_pkey PRIMARY KEY (id);


--
-- Name: btl_site_superviseurs btl_site_superviseurs_site_id_remoteuser_id_3076c95a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_superviseurs
    ADD CONSTRAINT btl_site_superviseurs_site_id_remoteuser_id_3076c95a_uniq UNIQUE (site_id, remoteuser_id);


--
-- Name: btl_siteproduitprix btl_siteproduitprix_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_siteproduitprix
    ADD CONSTRAINT btl_siteproduitprix_pkey PRIMARY KEY (id);


--
-- Name: btl_siteproduitprix btl_siteproduitprix_site_id_produit_id_59c9050c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_siteproduitprix
    ADD CONSTRAINT btl_siteproduitprix_site_id_produit_id_59c9050c_uniq UNIQUE (site_id, produit_id);


--
-- Name: btl_stockgoodiesite btl_stockgoodiesite_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_stockgoodiesite
    ADD CONSTRAINT btl_stockgoodiesite_pkey PRIMARY KEY (id);


--
-- Name: btl_stockgoodiesite btl_stockgoodiesite_site_id_goodie_id_df81c629_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_stockgoodiesite
    ADD CONSTRAINT btl_stockgoodiesite_site_id_goodie_id_df81c629_uniq UNIQUE (site_id, goodie_id);


--
-- Name: btl_vente btl_vente_degustation_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_degustation_id_key UNIQUE (degustation_id);


--
-- Name: btl_vente btl_vente_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_pkey PRIMARY KEY (id);


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_key UNIQUE (token_id);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_uniq UNIQUE (jti);


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outstandingtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outstandingtoken_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: btl_campagne_entreprise_id_9120f8f8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_entreprise_id_9120f8f8 ON public.btl_campagne USING btree (entreprise_id);


--
-- Name: btl_campagne_hotesses_campagne_id_69d7a645; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_hotesses_campagne_id_69d7a645 ON public.btl_campagne_hotesses USING btree (campagne_id);


--
-- Name: btl_campagne_hotesses_remoteuser_id_1ac03607; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_hotesses_remoteuser_id_1ac03607 ON public.btl_campagne_hotesses USING btree (remoteuser_id);


--
-- Name: btl_campagne_produits_campagne_id_4307a125; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_produits_campagne_id_4307a125 ON public.btl_campagne_produits USING btree (campagne_id);


--
-- Name: btl_campagne_produits_produit_id_bad933de; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_produits_produit_id_bad933de ON public.btl_campagne_produits USING btree (produit_id);


--
-- Name: btl_campagne_superviseurs_campagne_id_21fa383f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_superviseurs_campagne_id_21fa383f ON public.btl_campagne_superviseurs USING btree (campagne_id);


--
-- Name: btl_campagne_superviseurs_remoteuser_id_28ce7c03; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_campagne_superviseurs_remoteuser_id_28ce7c03 ON public.btl_campagne_superviseurs USING btree (remoteuser_id);


--
-- Name: btl_degustation_campagne_id_39abdf6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_degustation_campagne_id_39abdf6b ON public.btl_degustation USING btree (campagne_id);


--
-- Name: btl_degustation_hotesse_id_7ab0803f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_degustation_hotesse_id_7ab0803f ON public.btl_degustation USING btree (hotesse_id);


--
-- Name: btl_degustation_produit_id_a901237d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_degustation_produit_id_a901237d ON public.btl_degustation USING btree (produit_id);


--
-- Name: btl_degustation_site_id_f9b4fc97; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_degustation_site_id_f9b4fc97 ON public.btl_degustation USING btree (site_id);


--
-- Name: btl_gaingoodie_goodie_id_cf8adcd2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gaingoodie_goodie_id_cf8adcd2 ON public.btl_gaingoodie USING btree (goodie_id);


--
-- Name: btl_gaingoodie_hotesse_id_37486f2f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gaingoodie_hotesse_id_37486f2f ON public.btl_gaingoodie USING btree (hotesse_id);


--
-- Name: btl_gaingoodie_produit_associe_id_c24f9c37; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gaingoodie_produit_associe_id_c24f9c37 ON public.btl_gaingoodie USING btree (produit_associe_id);


--
-- Name: btl_gaingoodie_promotion_id_1411df9a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gaingoodie_promotion_id_1411df9a ON public.btl_gaingoodie USING btree (promotion_id);


--
-- Name: btl_gaingoodie_site_id_f6cc002d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gaingoodie_site_id_f6cc002d ON public.btl_gaingoodie USING btree (site_id);


--
-- Name: btl_gainpromotion_campagne_id_5c41066c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gainpromotion_campagne_id_5c41066c ON public.btl_gainpromotion USING btree (campagne_id);


--
-- Name: btl_gainpromotion_hotesse_id_9a2c3e50; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gainpromotion_hotesse_id_9a2c3e50 ON public.btl_gainpromotion USING btree (hotesse_id);


--
-- Name: btl_gainpromotion_promotion_id_f18dbc45; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gainpromotion_promotion_id_f18dbc45 ON public.btl_gainpromotion USING btree (promotion_id);


--
-- Name: btl_gainpromotion_site_id_d154b016; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_gainpromotion_site_id_d154b016 ON public.btl_gainpromotion USING btree (site_id);


--
-- Name: btl_goodie_campagne_id_2b39855a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_goodie_campagne_id_2b39855a ON public.btl_goodie USING btree (campagne_id);


--
-- Name: btl_goodie_entreprise_id_e8d02cc7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_goodie_entreprise_id_e8d02cc7 ON public.btl_goodie USING btree (entreprise_id);


--
-- Name: btl_goodie_produit_associe_id_40305ce3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_goodie_produit_associe_id_40305ce3 ON public.btl_goodie USING btree (produit_associe_id);


--
-- Name: btl_historicalcampagne_entreprise_id_d2684d4a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalcampagne_entreprise_id_d2684d4a ON public.btl_historicalcampagne USING btree (entreprise_id);


--
-- Name: btl_historicalcampagne_history_date_1bcb79f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalcampagne_history_date_1bcb79f3 ON public.btl_historicalcampagne USING btree (history_date);


--
-- Name: btl_historicalcampagne_history_user_id_6ab7b3ce; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalcampagne_history_user_id_6ab7b3ce ON public.btl_historicalcampagne USING btree (history_user_id);


--
-- Name: btl_historicalcampagne_id_c28508a9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalcampagne_id_c28508a9 ON public.btl_historicalcampagne USING btree (id);


--
-- Name: btl_historicaldegustation_campagne_id_885c38d3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_campagne_id_885c38d3 ON public.btl_historicaldegustation USING btree (campagne_id);


--
-- Name: btl_historicaldegustation_history_date_4c5bbd80; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_history_date_4c5bbd80 ON public.btl_historicaldegustation USING btree (history_date);


--
-- Name: btl_historicaldegustation_history_user_id_a514f8fa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_history_user_id_a514f8fa ON public.btl_historicaldegustation USING btree (history_user_id);


--
-- Name: btl_historicaldegustation_hotesse_id_c188ec0b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_hotesse_id_c188ec0b ON public.btl_historicaldegustation USING btree (hotesse_id);


--
-- Name: btl_historicaldegustation_id_9853d8b8; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_id_9853d8b8 ON public.btl_historicaldegustation USING btree (id);


--
-- Name: btl_historicaldegustation_produit_id_b79cbdaf; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_produit_id_b79cbdaf ON public.btl_historicaldegustation USING btree (produit_id);


--
-- Name: btl_historicaldegustation_site_id_11ade0f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicaldegustation_site_id_11ade0f3 ON public.btl_historicaldegustation USING btree (site_id);


--
-- Name: btl_historicalentreprise_history_date_89398e9b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalentreprise_history_date_89398e9b ON public.btl_historicalentreprise USING btree (history_date);


--
-- Name: btl_historicalentreprise_history_user_id_cc67be18; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalentreprise_history_user_id_cc67be18 ON public.btl_historicalentreprise USING btree (history_user_id);


--
-- Name: btl_historicalentreprise_id_64fea6b9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalentreprise_id_64fea6b9 ON public.btl_historicalentreprise USING btree (id);


--
-- Name: btl_historicalentreprise_user_id_2e24957c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalentreprise_user_id_2e24957c ON public.btl_historicalentreprise USING btree (user_id);


--
-- Name: btl_historicalgaingoodie_degustation_id_f1953380; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_degustation_id_f1953380 ON public.btl_historicalgaingoodie USING btree (degustation_id);


--
-- Name: btl_historicalgaingoodie_goodie_id_6fdf5b33; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_goodie_id_6fdf5b33 ON public.btl_historicalgaingoodie USING btree (goodie_id);


--
-- Name: btl_historicalgaingoodie_history_date_f20b3748; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_history_date_f20b3748 ON public.btl_historicalgaingoodie USING btree (history_date);


--
-- Name: btl_historicalgaingoodie_history_user_id_14187ad0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_history_user_id_14187ad0 ON public.btl_historicalgaingoodie USING btree (history_user_id);


--
-- Name: btl_historicalgaingoodie_hotesse_id_26a229cd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_hotesse_id_26a229cd ON public.btl_historicalgaingoodie USING btree (hotesse_id);


--
-- Name: btl_historicalgaingoodie_id_347627a3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_id_347627a3 ON public.btl_historicalgaingoodie USING btree (id);


--
-- Name: btl_historicalgaingoodie_produit_associe_id_26cbb4f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_produit_associe_id_26cbb4f6 ON public.btl_historicalgaingoodie USING btree (produit_associe_id);


--
-- Name: btl_historicalgaingoodie_promotion_id_2c7aa921; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_promotion_id_2c7aa921 ON public.btl_historicalgaingoodie USING btree (promotion_id);


--
-- Name: btl_historicalgaingoodie_site_id_5d3019ab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgaingoodie_site_id_5d3019ab ON public.btl_historicalgaingoodie USING btree (site_id);


--
-- Name: btl_historicalgainpromotion_campagne_id_928f6c0c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_campagne_id_928f6c0c ON public.btl_historicalgainpromotion USING btree (campagne_id);


--
-- Name: btl_historicalgainpromotion_history_date_42c09e0c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_history_date_42c09e0c ON public.btl_historicalgainpromotion USING btree (history_date);


--
-- Name: btl_historicalgainpromotion_history_user_id_4a6397ca; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_history_user_id_4a6397ca ON public.btl_historicalgainpromotion USING btree (history_user_id);


--
-- Name: btl_historicalgainpromotion_hotesse_id_262961fd; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_hotesse_id_262961fd ON public.btl_historicalgainpromotion USING btree (hotesse_id);


--
-- Name: btl_historicalgainpromotion_id_14b0f0d5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_id_14b0f0d5 ON public.btl_historicalgainpromotion USING btree (id);


--
-- Name: btl_historicalgainpromotion_promotion_id_d9e15cd1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_promotion_id_d9e15cd1 ON public.btl_historicalgainpromotion USING btree (promotion_id);


--
-- Name: btl_historicalgainpromotion_site_id_14b1aa93; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgainpromotion_site_id_14b1aa93 ON public.btl_historicalgainpromotion USING btree (site_id);


--
-- Name: btl_historicalgoodie_campagne_id_c98ca6a4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_campagne_id_c98ca6a4 ON public.btl_historicalgoodie USING btree (campagne_id);


--
-- Name: btl_historicalgoodie_entreprise_id_1c4dcb51; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_entreprise_id_1c4dcb51 ON public.btl_historicalgoodie USING btree (entreprise_id);


--
-- Name: btl_historicalgoodie_history_date_272aadc0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_history_date_272aadc0 ON public.btl_historicalgoodie USING btree (history_date);


--
-- Name: btl_historicalgoodie_history_user_id_1aeb8c23; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_history_user_id_1aeb8c23 ON public.btl_historicalgoodie USING btree (history_user_id);


--
-- Name: btl_historicalgoodie_id_8ef86da1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_id_8ef86da1 ON public.btl_historicalgoodie USING btree (id);


--
-- Name: btl_historicalgoodie_produit_associe_id_fbc2db74; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalgoodie_produit_associe_id_fbc2db74 ON public.btl_historicalgoodie USING btree (produit_associe_id);


--
-- Name: btl_historicalobjectifsite_history_date_3d86c6eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalobjectifsite_history_date_3d86c6eb ON public.btl_historicalobjectifsite USING btree (history_date);


--
-- Name: btl_historicalobjectifsite_history_user_id_a5b9fb1e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalobjectifsite_history_user_id_a5b9fb1e ON public.btl_historicalobjectifsite USING btree (history_user_id);


--
-- Name: btl_historicalobjectifsite_hotesse_id_22dc8c30; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalobjectifsite_hotesse_id_22dc8c30 ON public.btl_historicalobjectifsite USING btree (hotesse_id);


--
-- Name: btl_historicalobjectifsite_id_7a857cde; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalobjectifsite_id_7a857cde ON public.btl_historicalobjectifsite USING btree (id);


--
-- Name: btl_historicalobjectifsite_site_id_bdf1aa03; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalobjectifsite_site_id_bdf1aa03 ON public.btl_historicalobjectifsite USING btree (site_id);


--
-- Name: btl_historicalproduit_entreprise_id_d5ca67f0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalproduit_entreprise_id_d5ca67f0 ON public.btl_historicalproduit USING btree (entreprise_id);


--
-- Name: btl_historicalproduit_history_date_b13d2a8f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalproduit_history_date_b13d2a8f ON public.btl_historicalproduit USING btree (history_date);


--
-- Name: btl_historicalproduit_history_user_id_e61b41be; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalproduit_history_user_id_e61b41be ON public.btl_historicalproduit USING btree (history_user_id);


--
-- Name: btl_historicalproduit_id_df831217; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalproduit_id_df831217 ON public.btl_historicalproduit USING btree (id);


--
-- Name: btl_historicalpromotion_campagne_id_4b3ca487; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalpromotion_campagne_id_4b3ca487 ON public.btl_historicalpromotion USING btree (campagne_id);


--
-- Name: btl_historicalpromotion_history_date_841535f1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalpromotion_history_date_841535f1 ON public.btl_historicalpromotion USING btree (history_date);


--
-- Name: btl_historicalpromotion_history_user_id_23ae0059; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalpromotion_history_user_id_23ae0059 ON public.btl_historicalpromotion USING btree (history_user_id);


--
-- Name: btl_historicalpromotion_id_c07b5667; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalpromotion_id_c07b5667 ON public.btl_historicalpromotion USING btree (id);


--
-- Name: btl_historicalrapportjournalier_history_date_d745fcc3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalrapportjournalier_history_date_d745fcc3 ON public.btl_historicalrapportjournalier USING btree (history_date);


--
-- Name: btl_historicalrapportjournalier_history_user_id_05186332; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalrapportjournalier_history_user_id_05186332 ON public.btl_historicalrapportjournalier USING btree (history_user_id);


--
-- Name: btl_historicalrapportjournalier_hotesse_id_82d2d870; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalrapportjournalier_hotesse_id_82d2d870 ON public.btl_historicalrapportjournalier USING btree (hotesse_id);


--
-- Name: btl_historicalrapportjournalier_id_400d4a4d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalrapportjournalier_id_400d4a4d ON public.btl_historicalrapportjournalier USING btree (id);


--
-- Name: btl_historicalrapportjournalier_site_id_daed0686; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalrapportjournalier_site_id_daed0686 ON public.btl_historicalrapportjournalier USING btree (site_id);


--
-- Name: btl_historicalremoteuser_email_085b1228; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_email_085b1228 ON public.btl_historicalremoteuser USING btree (email);


--
-- Name: btl_historicalremoteuser_email_085b1228_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_email_085b1228_like ON public.btl_historicalremoteuser USING btree (email varchar_pattern_ops);


--
-- Name: btl_historicalremoteuser_history_date_78abdbad; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_history_date_78abdbad ON public.btl_historicalremoteuser USING btree (history_date);


--
-- Name: btl_historicalremoteuser_history_user_id_dd31c5cb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_history_user_id_dd31c5cb ON public.btl_historicalremoteuser USING btree (history_user_id);


--
-- Name: btl_historicalremoteuser_id_6bba07f3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_id_6bba07f3 ON public.btl_historicalremoteuser USING btree (id);


--
-- Name: btl_historicalremoteuser_username_4bfb2116; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_username_4bfb2116 ON public.btl_historicalremoteuser USING btree (username);


--
-- Name: btl_historicalremoteuser_username_4bfb2116_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalremoteuser_username_4bfb2116_like ON public.btl_historicalremoteuser USING btree (username varchar_pattern_ops);


--
-- Name: btl_historicalsite_campagne_id_da66b085; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsite_campagne_id_da66b085 ON public.btl_historicalsite USING btree (campagne_id);


--
-- Name: btl_historicalsite_history_date_3034169a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsite_history_date_3034169a ON public.btl_historicalsite USING btree (history_date);


--
-- Name: btl_historicalsite_history_user_id_fc658170; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsite_history_user_id_fc658170 ON public.btl_historicalsite USING btree (history_user_id);


--
-- Name: btl_historicalsite_id_7f9fcf0b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsite_id_7f9fcf0b ON public.btl_historicalsite USING btree (id);


--
-- Name: btl_historicalsiteproduitprix_history_date_bdfb3bd0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsiteproduitprix_history_date_bdfb3bd0 ON public.btl_historicalsiteproduitprix USING btree (history_date);


--
-- Name: btl_historicalsiteproduitprix_history_user_id_24fb93cc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsiteproduitprix_history_user_id_24fb93cc ON public.btl_historicalsiteproduitprix USING btree (history_user_id);


--
-- Name: btl_historicalsiteproduitprix_id_023652f6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsiteproduitprix_id_023652f6 ON public.btl_historicalsiteproduitprix USING btree (id);


--
-- Name: btl_historicalsiteproduitprix_produit_id_682495df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsiteproduitprix_produit_id_682495df ON public.btl_historicalsiteproduitprix USING btree (produit_id);


--
-- Name: btl_historicalsiteproduitprix_site_id_6f38cf23; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalsiteproduitprix_site_id_6f38cf23 ON public.btl_historicalsiteproduitprix USING btree (site_id);


--
-- Name: btl_historicalstockgoodiesite_goodie_id_d5f7864e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalstockgoodiesite_goodie_id_d5f7864e ON public.btl_historicalstockgoodiesite USING btree (goodie_id);


--
-- Name: btl_historicalstockgoodiesite_history_date_312aae03; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalstockgoodiesite_history_date_312aae03 ON public.btl_historicalstockgoodiesite USING btree (history_date);


--
-- Name: btl_historicalstockgoodiesite_history_user_id_6f694c48; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalstockgoodiesite_history_user_id_6f694c48 ON public.btl_historicalstockgoodiesite USING btree (history_user_id);


--
-- Name: btl_historicalstockgoodiesite_id_f696532e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalstockgoodiesite_id_f696532e ON public.btl_historicalstockgoodiesite USING btree (id);


--
-- Name: btl_historicalstockgoodiesite_site_id_bfbba3c3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalstockgoodiesite_site_id_bfbba3c3 ON public.btl_historicalstockgoodiesite USING btree (site_id);


--
-- Name: btl_historicalvente_degustation_id_1bf206b3; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_degustation_id_1bf206b3 ON public.btl_historicalvente USING btree (degustation_id);


--
-- Name: btl_historicalvente_history_date_9b39c22e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_history_date_9b39c22e ON public.btl_historicalvente USING btree (history_date);


--
-- Name: btl_historicalvente_history_user_id_b64a97c6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_history_user_id_b64a97c6 ON public.btl_historicalvente USING btree (history_user_id);


--
-- Name: btl_historicalvente_hotesse_id_43a99dee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_hotesse_id_43a99dee ON public.btl_historicalvente USING btree (hotesse_id);


--
-- Name: btl_historicalvente_id_41e5279d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_id_41e5279d ON public.btl_historicalvente USING btree (id);


--
-- Name: btl_historicalvente_produit_id_a47550d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_produit_id_a47550d6 ON public.btl_historicalvente USING btree (produit_id);


--
-- Name: btl_historicalvente_site_id_f284dbab; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_historicalvente_site_id_f284dbab ON public.btl_historicalvente USING btree (site_id);


--
-- Name: btl_objectifsite_hotesse_id_1426d7ff; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_objectifsite_hotesse_id_1426d7ff ON public.btl_objectifsite USING btree (hotesse_id);


--
-- Name: btl_objectifsite_site_id_8ba6d14d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_objectifsite_site_id_8ba6d14d ON public.btl_objectifsite USING btree (site_id);


--
-- Name: btl_produit_entreprise_id_1ea4e65f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_produit_entreprise_id_1ea4e65f ON public.btl_produit USING btree (entreprise_id);


--
-- Name: btl_promotion_campagne_id_5161a241; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_promotion_campagne_id_5161a241 ON public.btl_promotion USING btree (campagne_id);


--
-- Name: btl_promotion_goodies_goodie_id_2617c9eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_promotion_goodies_goodie_id_2617c9eb ON public.btl_promotion_goodies USING btree (goodie_id);


--
-- Name: btl_promotion_goodies_promotion_id_674caa65; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_promotion_goodies_promotion_id_674caa65 ON public.btl_promotion_goodies USING btree (promotion_id);


--
-- Name: btl_promotion_sites_promotion_id_4258241a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_promotion_sites_promotion_id_4258241a ON public.btl_promotion_sites USING btree (promotion_id);


--
-- Name: btl_promotion_sites_site_id_705121d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_promotion_sites_site_id_705121d7 ON public.btl_promotion_sites USING btree (site_id);


--
-- Name: btl_rapportjournalier_hotesse_id_32ca3762; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_rapportjournalier_hotesse_id_32ca3762 ON public.btl_rapportjournalier USING btree (hotesse_id);


--
-- Name: btl_rapportjournalier_site_id_a92a67d6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_rapportjournalier_site_id_a92a67d6 ON public.btl_rapportjournalier USING btree (site_id);


--
-- Name: btl_remoteuser_email_5f813748_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_email_5f813748_like ON public.btl_remoteuser USING btree (email varchar_pattern_ops);


--
-- Name: btl_remoteuser_groups_group_id_bf1842bc; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_groups_group_id_bf1842bc ON public.btl_remoteuser_groups USING btree (group_id);


--
-- Name: btl_remoteuser_groups_remoteuser_id_f1a55989; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_groups_remoteuser_id_f1a55989 ON public.btl_remoteuser_groups USING btree (remoteuser_id);


--
-- Name: btl_remoteuser_user_permissions_permission_id_d0c8b68e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_user_permissions_permission_id_d0c8b68e ON public.btl_remoteuser_user_permissions USING btree (permission_id);


--
-- Name: btl_remoteuser_user_permissions_remoteuser_id_001953e4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_user_permissions_remoteuser_id_001953e4 ON public.btl_remoteuser_user_permissions USING btree (remoteuser_id);


--
-- Name: btl_remoteuser_username_32815256_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_remoteuser_username_32815256_like ON public.btl_remoteuser USING btree (username varchar_pattern_ops);


--
-- Name: btl_site_campagne_id_397a34c1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_site_campagne_id_397a34c1 ON public.btl_site USING btree (campagne_id);


--
-- Name: btl_site_hotesses_remoteuser_id_e425a047; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_site_hotesses_remoteuser_id_e425a047 ON public.btl_site_hotesses USING btree (remoteuser_id);


--
-- Name: btl_site_hotesses_site_id_f5823974; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_site_hotesses_site_id_f5823974 ON public.btl_site_hotesses USING btree (site_id);


--
-- Name: btl_site_superviseurs_remoteuser_id_867a5e6b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_site_superviseurs_remoteuser_id_867a5e6b ON public.btl_site_superviseurs USING btree (remoteuser_id);


--
-- Name: btl_site_superviseurs_site_id_f961254e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_site_superviseurs_site_id_f961254e ON public.btl_site_superviseurs USING btree (site_id);


--
-- Name: btl_siteproduitprix_produit_id_b926edef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_siteproduitprix_produit_id_b926edef ON public.btl_siteproduitprix USING btree (produit_id);


--
-- Name: btl_siteproduitprix_site_id_6858c5ea; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_siteproduitprix_site_id_6858c5ea ON public.btl_siteproduitprix USING btree (site_id);


--
-- Name: btl_stockgoodiesite_goodie_id_be3260c2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_stockgoodiesite_goodie_id_be3260c2 ON public.btl_stockgoodiesite USING btree (goodie_id);


--
-- Name: btl_stockgoodiesite_site_id_d375d552; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_stockgoodiesite_site_id_d375d552 ON public.btl_stockgoodiesite USING btree (site_id);


--
-- Name: btl_vente_hotesse_id_1991cda2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_vente_hotesse_id_1991cda2 ON public.btl_vente USING btree (hotesse_id);


--
-- Name: btl_vente_produit_id_aea29905; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_vente_produit_id_aea29905 ON public.btl_vente USING btree (produit_id);


--
-- Name: btl_vente_site_id_8376fdfa; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX btl_vente_site_id_8376fdfa ON public.btl_vente USING btree (site_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_outstandingtoken_jti_hex_d9bdf6f7_like ON public.token_blacklist_outstandingtoken USING btree (jti varchar_pattern_ops);


--
-- Name: token_blacklist_outstandingtoken_user_id_83bc629a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX token_blacklist_outstandingtoken_user_id_83bc629a ON public.token_blacklist_outstandingtoken USING btree (user_id);


--
-- Name: unique_gaingoodie_per_degustation; Type: INDEX; Schema: public; Owner: postgres
--

CREATE UNIQUE INDEX unique_gaingoodie_per_degustation ON public.btl_gaingoodie USING btree (degustation_id, site_id, goodie_id) WHERE (degustation_id IS NOT NULL);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne btl_campagne_entreprise_id_9120f8f8_fk_btl_entreprise_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne
    ADD CONSTRAINT btl_campagne_entreprise_id_9120f8f8_fk_btl_entreprise_id FOREIGN KEY (entreprise_id) REFERENCES public.btl_entreprise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_hotesses btl_campagne_hotesse_remoteuser_id_1ac03607_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_hotesses
    ADD CONSTRAINT btl_campagne_hotesse_remoteuser_id_1ac03607_fk_btl_remot FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_hotesses btl_campagne_hotesses_campagne_id_69d7a645_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_hotesses
    ADD CONSTRAINT btl_campagne_hotesses_campagne_id_69d7a645_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_produits btl_campagne_produits_campagne_id_4307a125_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_produits
    ADD CONSTRAINT btl_campagne_produits_campagne_id_4307a125_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_produits btl_campagne_produits_produit_id_bad933de_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_produits
    ADD CONSTRAINT btl_campagne_produits_produit_id_bad933de_fk_btl_produit_id FOREIGN KEY (produit_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_superviseurs btl_campagne_supervi_campagne_id_21fa383f_fk_btl_campa; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_superviseurs
    ADD CONSTRAINT btl_campagne_supervi_campagne_id_21fa383f_fk_btl_campa FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_campagne_superviseurs btl_campagne_supervi_remoteuser_id_28ce7c03_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_campagne_superviseurs
    ADD CONSTRAINT btl_campagne_supervi_remoteuser_id_28ce7c03_fk_btl_remot FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_degustation btl_degustation_campagne_id_39abdf6b_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_degustation
    ADD CONSTRAINT btl_degustation_campagne_id_39abdf6b_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_degustation btl_degustation_hotesse_id_7ab0803f_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_degustation
    ADD CONSTRAINT btl_degustation_hotesse_id_7ab0803f_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_degustation btl_degustation_produit_id_a901237d_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_degustation
    ADD CONSTRAINT btl_degustation_produit_id_a901237d_fk_btl_produit_id FOREIGN KEY (produit_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_degustation btl_degustation_site_id_f9b4fc97_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_degustation
    ADD CONSTRAINT btl_degustation_site_id_f9b4fc97_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_entreprise btl_entreprise_user_id_b1dcf433_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_entreprise
    ADD CONSTRAINT btl_entreprise_user_id_b1dcf433_fk_btl_remoteuser_id FOREIGN KEY (user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_degustation_id_d095b423_fk_btl_degustation_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_degustation_id_d095b423_fk_btl_degustation_id FOREIGN KEY (degustation_id) REFERENCES public.btl_degustation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_goodie_id_cf8adcd2_fk_btl_goodie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_goodie_id_cf8adcd2_fk_btl_goodie_id FOREIGN KEY (goodie_id) REFERENCES public.btl_goodie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_hotesse_id_37486f2f_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_hotesse_id_37486f2f_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_produit_associe_id_c24f9c37_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_produit_associe_id_c24f9c37_fk_btl_produit_id FOREIGN KEY (produit_associe_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_promotion_id_1411df9a_fk_btl_promotion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_promotion_id_1411df9a_fk_btl_promotion_id FOREIGN KEY (promotion_id) REFERENCES public.btl_promotion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gaingoodie btl_gaingoodie_site_id_f6cc002d_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gaingoodie
    ADD CONSTRAINT btl_gaingoodie_site_id_f6cc002d_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gainpromotion btl_gainpromotion_campagne_id_5c41066c_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gainpromotion
    ADD CONSTRAINT btl_gainpromotion_campagne_id_5c41066c_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gainpromotion btl_gainpromotion_hotesse_id_9a2c3e50_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gainpromotion
    ADD CONSTRAINT btl_gainpromotion_hotesse_id_9a2c3e50_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gainpromotion btl_gainpromotion_promotion_id_f18dbc45_fk_btl_promotion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gainpromotion
    ADD CONSTRAINT btl_gainpromotion_promotion_id_f18dbc45_fk_btl_promotion_id FOREIGN KEY (promotion_id) REFERENCES public.btl_promotion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_gainpromotion btl_gainpromotion_site_id_d154b016_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_gainpromotion
    ADD CONSTRAINT btl_gainpromotion_site_id_d154b016_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_goodie btl_goodie_campagne_id_2b39855a_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_goodie
    ADD CONSTRAINT btl_goodie_campagne_id_2b39855a_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_goodie btl_goodie_entreprise_id_e8d02cc7_fk_btl_entreprise_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_goodie
    ADD CONSTRAINT btl_goodie_entreprise_id_e8d02cc7_fk_btl_entreprise_id FOREIGN KEY (entreprise_id) REFERENCES public.btl_entreprise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_goodie btl_goodie_produit_associe_id_40305ce3_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_goodie
    ADD CONSTRAINT btl_goodie_produit_associe_id_40305ce3_fk_btl_produit_id FOREIGN KEY (produit_associe_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalcampagne btl_historicalcampag_history_user_id_6ab7b3ce_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalcampagne
    ADD CONSTRAINT btl_historicalcampag_history_user_id_6ab7b3ce_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicaldegustation btl_historicaldegust_history_user_id_a514f8fa_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicaldegustation
    ADD CONSTRAINT btl_historicaldegust_history_user_id_a514f8fa_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalentreprise btl_historicalentrep_history_user_id_cc67be18_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalentreprise
    ADD CONSTRAINT btl_historicalentrep_history_user_id_cc67be18_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalgaingoodie btl_historicalgaingo_history_user_id_14187ad0_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgaingoodie
    ADD CONSTRAINT btl_historicalgaingo_history_user_id_14187ad0_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalgainpromotion btl_historicalgainpr_history_user_id_4a6397ca_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgainpromotion
    ADD CONSTRAINT btl_historicalgainpr_history_user_id_4a6397ca_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalgoodie btl_historicalgoodie_history_user_id_1aeb8c23_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalgoodie
    ADD CONSTRAINT btl_historicalgoodie_history_user_id_1aeb8c23_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalobjectifsite btl_historicalobject_history_user_id_a5b9fb1e_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalobjectifsite
    ADD CONSTRAINT btl_historicalobject_history_user_id_a5b9fb1e_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalproduit btl_historicalprodui_history_user_id_e61b41be_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalproduit
    ADD CONSTRAINT btl_historicalprodui_history_user_id_e61b41be_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalpromotion btl_historicalpromot_history_user_id_23ae0059_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalpromotion
    ADD CONSTRAINT btl_historicalpromot_history_user_id_23ae0059_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalrapportjournalier btl_historicalrappor_history_user_id_05186332_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalrapportjournalier
    ADD CONSTRAINT btl_historicalrappor_history_user_id_05186332_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalremoteuser btl_historicalremote_history_user_id_dd31c5cb_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalremoteuser
    ADD CONSTRAINT btl_historicalremote_history_user_id_dd31c5cb_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalsite btl_historicalsite_history_user_id_fc658170_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalsite
    ADD CONSTRAINT btl_historicalsite_history_user_id_fc658170_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalsiteproduitprix btl_historicalsitepr_history_user_id_24fb93cc_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalsiteproduitprix
    ADD CONSTRAINT btl_historicalsitepr_history_user_id_24fb93cc_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalstockgoodiesite btl_historicalstockg_history_user_id_6f694c48_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalstockgoodiesite
    ADD CONSTRAINT btl_historicalstockg_history_user_id_6f694c48_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_historicalvente btl_historicalvente_history_user_id_b64a97c6_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_historicalvente
    ADD CONSTRAINT btl_historicalvente_history_user_id_b64a97c6_fk_btl_remot FOREIGN KEY (history_user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_objectifsite btl_objectifsite_hotesse_id_1426d7ff_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_objectifsite
    ADD CONSTRAINT btl_objectifsite_hotesse_id_1426d7ff_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_objectifsite btl_objectifsite_site_id_8ba6d14d_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_objectifsite
    ADD CONSTRAINT btl_objectifsite_site_id_8ba6d14d_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_produit btl_produit_entreprise_id_1ea4e65f_fk_btl_entreprise_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_produit
    ADD CONSTRAINT btl_produit_entreprise_id_1ea4e65f_fk_btl_entreprise_id FOREIGN KEY (entreprise_id) REFERENCES public.btl_entreprise(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_promotion btl_promotion_campagne_id_5161a241_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion
    ADD CONSTRAINT btl_promotion_campagne_id_5161a241_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_promotion_goodies btl_promotion_goodies_goodie_id_2617c9eb_fk_btl_goodie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_goodies
    ADD CONSTRAINT btl_promotion_goodies_goodie_id_2617c9eb_fk_btl_goodie_id FOREIGN KEY (goodie_id) REFERENCES public.btl_goodie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_promotion_goodies btl_promotion_goodies_promotion_id_674caa65_fk_btl_promotion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_goodies
    ADD CONSTRAINT btl_promotion_goodies_promotion_id_674caa65_fk_btl_promotion_id FOREIGN KEY (promotion_id) REFERENCES public.btl_promotion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_promotion_sites btl_promotion_sites_promotion_id_4258241a_fk_btl_promotion_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_sites
    ADD CONSTRAINT btl_promotion_sites_promotion_id_4258241a_fk_btl_promotion_id FOREIGN KEY (promotion_id) REFERENCES public.btl_promotion(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_promotion_sites btl_promotion_sites_site_id_705121d7_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_promotion_sites
    ADD CONSTRAINT btl_promotion_sites_site_id_705121d7_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_rapportjournalier btl_rapportjournalier_hotesse_id_32ca3762_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_rapportjournalier
    ADD CONSTRAINT btl_rapportjournalier_hotesse_id_32ca3762_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_rapportjournalier btl_rapportjournalier_site_id_a92a67d6_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_rapportjournalier
    ADD CONSTRAINT btl_rapportjournalier_site_id_a92a67d6_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_remoteuser_groups btl_remoteuser_group_remoteuser_id_f1a55989_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_groups
    ADD CONSTRAINT btl_remoteuser_group_remoteuser_id_f1a55989_fk_btl_remot FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_remoteuser_groups btl_remoteuser_groups_group_id_bf1842bc_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_groups
    ADD CONSTRAINT btl_remoteuser_groups_group_id_bf1842bc_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_remoteuser_user_permissions btl_remoteuser_user__permission_id_d0c8b68e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_user_permissions
    ADD CONSTRAINT btl_remoteuser_user__permission_id_d0c8b68e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_remoteuser_user_permissions btl_remoteuser_user__remoteuser_id_001953e4_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_remoteuser_user_permissions
    ADD CONSTRAINT btl_remoteuser_user__remoteuser_id_001953e4_fk_btl_remot FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_site btl_site_campagne_id_397a34c1_fk_btl_campagne_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site
    ADD CONSTRAINT btl_site_campagne_id_397a34c1_fk_btl_campagne_id FOREIGN KEY (campagne_id) REFERENCES public.btl_campagne(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_site_hotesses btl_site_hotesses_remoteuser_id_e425a047_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_hotesses
    ADD CONSTRAINT btl_site_hotesses_remoteuser_id_e425a047_fk_btl_remoteuser_id FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_site_hotesses btl_site_hotesses_site_id_f5823974_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_hotesses
    ADD CONSTRAINT btl_site_hotesses_site_id_f5823974_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_site_superviseurs btl_site_superviseur_remoteuser_id_867a5e6b_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_superviseurs
    ADD CONSTRAINT btl_site_superviseur_remoteuser_id_867a5e6b_fk_btl_remot FOREIGN KEY (remoteuser_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_site_superviseurs btl_site_superviseurs_site_id_f961254e_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_site_superviseurs
    ADD CONSTRAINT btl_site_superviseurs_site_id_f961254e_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_siteproduitprix btl_siteproduitprix_produit_id_b926edef_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_siteproduitprix
    ADD CONSTRAINT btl_siteproduitprix_produit_id_b926edef_fk_btl_produit_id FOREIGN KEY (produit_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_siteproduitprix btl_siteproduitprix_site_id_6858c5ea_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_siteproduitprix
    ADD CONSTRAINT btl_siteproduitprix_site_id_6858c5ea_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_stockgoodiesite btl_stockgoodiesite_goodie_id_be3260c2_fk_btl_goodie_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_stockgoodiesite
    ADD CONSTRAINT btl_stockgoodiesite_goodie_id_be3260c2_fk_btl_goodie_id FOREIGN KEY (goodie_id) REFERENCES public.btl_goodie(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_stockgoodiesite btl_stockgoodiesite_site_id_d375d552_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_stockgoodiesite
    ADD CONSTRAINT btl_stockgoodiesite_site_id_d375d552_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_vente btl_vente_degustation_id_2b6669b6_fk_btl_degustation_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_degustation_id_2b6669b6_fk_btl_degustation_id FOREIGN KEY (degustation_id) REFERENCES public.btl_degustation(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_vente btl_vente_hotesse_id_1991cda2_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_hotesse_id_1991cda2_fk_btl_remoteuser_id FOREIGN KEY (hotesse_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_vente btl_vente_produit_id_aea29905_fk_btl_produit_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_produit_id_aea29905_fk_btl_produit_id FOREIGN KEY (produit_id) REFERENCES public.btl_produit(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: btl_vente btl_vente_site_id_8376fdfa_fk_btl_site_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.btl_vente
    ADD CONSTRAINT btl_vente_site_id_8376fdfa_fk_btl_site_id FOREIGN KEY (site_id) REFERENCES public.btl_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_btl_remoteuser_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_btl_remoteuser_id FOREIGN KEY (user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_blacklistedtoken token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_blacklistedtoken
    ADD CONSTRAINT token_blacklist_blacklistedtoken_token_id_3cc7fe56_fk FOREIGN KEY (token_id) REFERENCES public.token_blacklist_outstandingtoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: token_blacklist_outstandingtoken token_blacklist_outs_user_id_83bc629a_fk_btl_remot; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.token_blacklist_outstandingtoken
    ADD CONSTRAINT token_blacklist_outs_user_id_83bc629a_fk_btl_remot FOREIGN KEY (user_id) REFERENCES public.btl_remoteuser(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

\unrestrict XdU0gVlLGCueWP7zDMj80VIPiVf4hlLJnY1OLm7EO4DbFZPmYY58H4CLxjvVz7s