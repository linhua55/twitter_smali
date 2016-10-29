.class Lcom/twitter/database/generated/oz;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/ou;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/ou;)V
    .locals 0

    .prologue
    .line 1148
    iput-object p1, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1341
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x86

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 1155
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1170
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x6f

    .line 1188
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1189
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x71

    .line 1201
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1202
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/core/bm;->b:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/bm;

    goto :goto_0
.end method

.method public i()I
    .locals 2

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x76

    .line 1236
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1237
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/model/profile/ExtendedProfile;->a:Lcom/twitter/util/serialization/d;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/profile/ExtendedProfile;

    goto :goto_0
.end method

.method public n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x77

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/twitter/util/collection/ab;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/collection/ab",
            "<",
            "Lcom/twitter/model/geo/TwitterPlace;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v1, 0x78

    .line 1249
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    sget-object v1, Lcom/twitter/database/generated/a;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a([BLcom/twitter/util/serialization/ah;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/util/collection/ab;

    goto :goto_0
.end method

.method public p()I
    .locals 2

    .prologue
    .line 1259
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x79

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 1267
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 1309
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1314
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x81

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/twitter/database/generated/oz;->a:Lcom/twitter/database/generated/ou;

    invoke-static {v0}, Lcom/twitter/database/generated/ou;->a(Lcom/twitter/database/generated/ou;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x83

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
