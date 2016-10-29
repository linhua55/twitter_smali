.class Lcom/twitter/database/generated/fm;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/fl;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/fl;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0xe

    .line 268
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 269
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

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
    .line 275
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x10

    .line 281
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 282
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

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
    .line 287
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 316
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 317
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

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
    .line 323
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x16

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
    const/16 v1, 0x17

    .line 329
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 330
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

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
    .line 339
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 347
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 371
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/twitter/database/generated/fm;->a:Lcom/twitter/database/generated/fl;

    invoke-static {v0}, Lcom/twitter/database/generated/fl;->a(Lcom/twitter/database/generated/fl;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
