.class Lcom/twitter/database/generated/ig;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/hy;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/hy;)V
    .locals 0

    .prologue
    .line 1134
    iput-object p1, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1321
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x94

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x95

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x7e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x7f

    .line 1174
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1175
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

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
    .line 1181
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x80

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x81

    .line 1187
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1188
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

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
    .line 1193
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x82

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x83

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1204
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x84

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x85

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x86

    .line 1222
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1223
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

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
    .line 1229
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x87

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
    const/16 v1, 0x88

    .line 1235
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1236
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

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
    .line 1245
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x89

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 1253
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1277
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1285
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x8f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x90

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x91

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x92

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/twitter/database/generated/ig;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x93

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
