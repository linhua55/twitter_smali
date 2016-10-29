.class public Lcom/twitter/model/core/bl;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public A:Z

.field public B:Lcom/twitter/model/geo/TwitterPlace;

.field public C:Ljava/lang/String;

.field public D:I

.field public E:I

.field public F:Lcss;

.field public G:J

.field public H:Z

.field public I:I

.field public J:Lclw;

.field public K:Lclj;

.field public L:I

.field public M:I

.field public N:I

.field public O:J

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Lcom/twitter/model/timeline/al;

.field public S:Lcom/twitter/model/core/ay;

.field public T:J

.field public U:Ljava/lang/Long;

.field public V:[Lcom/twitter/model/core/e;

.field public W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/EditableMedia;",
            ">;"
        }
    .end annotation
.end field

.field public X:I

.field public Y:Ljava/lang/String;

.field public Z:I

.field public a:Ljava/lang/String;

.field public aa:I

.field public ab:I

.field public ac:Ljava/lang/String;

.field public ad:I

.field public ae:Z

.field public af:J

.field public ag:Lcom/twitter/model/core/cc;

.field public ah:Lcom/twitter/model/core/bv;

.field public ai:Ljava/lang/String;

.field public aj:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:J

.field public g:Ljava/lang/String;

.field public h:J

.field public i:Ljava/lang/String;

.field public j:J

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:J

.field public p:Ljava/lang/String;

.field public q:J

.field public r:Z

.field public s:Z

.field public t:J

.field public u:Z

.field public v:D

.field public w:D

.field public x:Lcom/twitter/model/core/bm;

.field public y:Z

.field public z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    iput-wide v0, p0, Lcom/twitter/model/core/bl;->f:J

    .line 860
    iput-wide v0, p0, Lcom/twitter/model/core/bl;->h:J

    .line 919
    const/4 v0, -0x1

    iput v0, p0, Lcom/twitter/model/core/bl;->aj:I

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/Tweet;
    .locals 2

    .prologue
    .line 1314
    new-instance v0, Lcom/twitter/model/core/Tweet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twitter/model/core/Tweet;-><init>(Lcom/twitter/model/core/bl;Lcom/twitter/model/core/bk;)V

    return-object v0
.end method

.method public a(D)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1043
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->v:D

    .line 1044
    return-object p0
.end method

.method public a(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1091
    iput p1, p0, Lcom/twitter/model/core/bl;->D:I

    .line 1092
    return-object p0
.end method

.method public a(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 947
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->f:J

    .line 948
    return-object p0
.end method

.method public a(Lclj;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1133
    iput-object p1, p0, Lcom/twitter/model/core/bl;->K:Lclj;

    .line 1134
    return-object p0
.end method

.method public a(Lclw;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1127
    iput-object p1, p0, Lcom/twitter/model/core/bl;->J:Lclw;

    .line 1128
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/TwitterSocialProof;)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1281
    if-eqz p1, :cond_0

    .line 1282
    iget v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->b:I

    iput v0, p0, Lcom/twitter/model/core/bl;->X:I

    .line 1283
    iget-object v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/bl;->Y:Ljava/lang/String;

    .line 1284
    iget v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->d:I

    iput v0, p0, Lcom/twitter/model/core/bl;->Z:I

    .line 1285
    iget v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->i:I

    iput v0, p0, Lcom/twitter/model/core/bl;->aa:I

    .line 1286
    iget v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->e:I

    iput v0, p0, Lcom/twitter/model/core/bl;->ab:I

    .line 1287
    iget-object v0, p1, Lcom/twitter/model/core/TwitterSocialProof;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/twitter/model/core/bl;->ac:Ljava/lang/String;

    .line 1289
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/ay;)Lcom/twitter/model/core/bl;
    .locals 2

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/twitter/model/core/bl;->S:Lcom/twitter/model/core/ay;

    .line 1194
    if-eqz p1, :cond_0

    .line 1195
    iget-wide v0, p1, Lcom/twitter/model/core/ay;->e:J

    iput-wide v0, p0, Lcom/twitter/model/core/bl;->T:J

    .line 1196
    iget v0, p0, Lcom/twitter/model/core/bl;->D:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/twitter/model/core/bl;->D:I

    .line 1198
    :cond_0
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/bm;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1055
    iput-object p1, p0, Lcom/twitter/model/core/bl;->x:Lcom/twitter/model/core/bm;

    .line 1056
    return-object p0
.end method

.method public a(Lcom/twitter/model/core/cc;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/twitter/model/core/bl;->ag:Lcom/twitter/model/core/cc;

    .line 1295
    return-object p0
.end method

.method public a(Lcom/twitter/model/geo/TwitterPlace;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/twitter/model/core/bl;->B:Lcom/twitter/model/geo/TwitterPlace;

    .line 1080
    return-object p0
.end method

.method public a(Lcom/twitter/model/timeline/al;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1187
    iput-object p1, p0, Lcom/twitter/model/core/bl;->R:Lcom/twitter/model/timeline/al;

    .line 1188
    return-object p0
.end method

.method public a(Lcss;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1103
    iput-object p1, p0, Lcom/twitter/model/core/bl;->F:Lcss;

    .line 1104
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1209
    iput-object p1, p0, Lcom/twitter/model/core/bl;->U:Ljava/lang/Long;

    .line 1210
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 923
    iput-object p1, p0, Lcom/twitter/model/core/bl;->a:Ljava/lang/String;

    .line 924
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/twitter/model/core/bl;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/EditableMedia;",
            ">;)",
            "Lcom/twitter/model/core/bl;"
        }
    .end annotation

    .prologue
    .line 1221
    iput-object p1, p0, Lcom/twitter/model/core/bl;->W:Ljava/util/List;

    .line 1222
    return-object p0
.end method

.method public a(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 983
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->l:Z

    .line 984
    return-object p0
.end method

.method public a([Lcom/twitter/model/core/e;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/twitter/model/core/bl;->V:[Lcom/twitter/model/core/e;

    .line 1216
    return-object p0
.end method

.method public b(D)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1049
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->w:D

    .line 1050
    return-object p0
.end method

.method public b(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1097
    iput p1, p0, Lcom/twitter/model/core/bl;->E:I

    .line 1098
    return-object p0
.end method

.method public b(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 959
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->h:J

    .line 960
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 929
    iput-object p1, p0, Lcom/twitter/model/core/bl;->c:Ljava/lang/String;

    .line 930
    return-object p0
.end method

.method public b(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 989
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->m:Z

    .line 990
    return-object p0
.end method

.method public c(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1121
    iput p1, p0, Lcom/twitter/model/core/bl;->I:I

    .line 1122
    return-object p0
.end method

.method public c(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 971
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->j:J

    .line 972
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/twitter/model/core/bl;->d:Ljava/lang/String;

    .line 936
    return-object p0
.end method

.method public c(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1019
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->r:Z

    .line 1020
    return-object p0
.end method

.method public d(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1139
    iput p1, p0, Lcom/twitter/model/core/bl;->L:I

    .line 1140
    return-object p0
.end method

.method public d(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 995
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->n:J

    .line 996
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 941
    iput-object p1, p0, Lcom/twitter/model/core/bl;->e:Ljava/lang/String;

    .line 942
    return-object p0
.end method

.method public d(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1025
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->s:Z

    .line 1026
    return-object p0
.end method

.method public e(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1145
    iput p1, p0, Lcom/twitter/model/core/bl;->M:I

    .line 1146
    return-object p0
.end method

.method public e(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1001
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->o:J

    .line 1002
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/twitter/model/core/bl;->g:Ljava/lang/String;

    .line 954
    return-object p0
.end method

.method public e(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->u:Z

    .line 1038
    return-object p0
.end method

.method public f(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1151
    iput p1, p0, Lcom/twitter/model/core/bl;->N:I

    .line 1152
    return-object p0
.end method

.method public f(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1013
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->q:J

    .line 1014
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 965
    iput-object p1, p0, Lcom/twitter/model/core/bl;->i:Ljava/lang/String;

    .line 966
    return-object p0
.end method

.method public f(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1061
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->y:Z

    .line 1062
    return-object p0
.end method

.method public g(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1163
    iput p1, p0, Lcom/twitter/model/core/bl;->P:I

    .line 1164
    return-object p0
.end method

.method public g(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1031
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->t:J

    .line 1032
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 977
    iput-object p1, p0, Lcom/twitter/model/core/bl;->k:Ljava/lang/String;

    .line 978
    return-object p0
.end method

.method public g(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1073
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->A:Z

    .line 1074
    return-object p0
.end method

.method public h(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1181
    iput p1, p0, Lcom/twitter/model/core/bl;->aj:I

    .line 1182
    return-object p0
.end method

.method public h(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1067
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->z:J

    .line 1068
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/twitter/model/core/bl;->p:Ljava/lang/String;

    .line 1008
    return-object p0
.end method

.method public h(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1115
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->H:Z

    .line 1116
    return-object p0
.end method

.method public i(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1227
    iput p1, p0, Lcom/twitter/model/core/bl;->X:I

    .line 1228
    return-object p0
.end method

.method public i(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1109
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->G:J

    .line 1110
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1085
    iput-object p1, p0, Lcom/twitter/model/core/bl;->C:Ljava/lang/String;

    .line 1086
    return-object p0
.end method

.method public i(Z)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1269
    iput-boolean p1, p0, Lcom/twitter/model/core/bl;->ae:Z

    .line 1270
    return-object p0
.end method

.method public j(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1239
    iput p1, p0, Lcom/twitter/model/core/bl;->Z:I

    .line 1240
    return-object p0
.end method

.method public j(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1157
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->O:J

    .line 1158
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/twitter/model/core/bl;->Q:Ljava/lang/String;

    .line 1170
    return-object p0
.end method

.method public k(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1245
    iput p1, p0, Lcom/twitter/model/core/bl;->aa:I

    .line 1246
    return-object p0
.end method

.method public k(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1203
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->T:J

    .line 1204
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/twitter/model/core/bl;->ai:Ljava/lang/String;

    .line 1176
    return-object p0
.end method

.method public l(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1251
    iput p1, p0, Lcom/twitter/model/core/bl;->ab:I

    .line 1252
    return-object p0
.end method

.method public l(J)Lcom/twitter/model/core/bl;
    .locals 1

    .prologue
    .line 1275
    iput-wide p1, p0, Lcom/twitter/model/core/bl;->af:J

    .line 1276
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/twitter/model/core/bl;->Y:Ljava/lang/String;

    .line 1234
    return-object p0
.end method

.method public m(I)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1263
    iput p1, p0, Lcom/twitter/model/core/bl;->ad:I

    .line 1264
    return-object p0
.end method

.method public m(Ljava/lang/String;)Lcom/twitter/model/core/bl;
    .locals 0

    .prologue
    .line 1257
    iput-object p1, p0, Lcom/twitter/model/core/bl;->ac:Ljava/lang/String;

    .line 1258
    return-object p0
.end method
