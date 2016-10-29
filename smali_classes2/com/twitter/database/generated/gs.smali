.class Lcom/twitter/database/generated/gs;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/gq;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/gq;)V
    .locals 0

    .prologue
    .line 269
    iput-object p1, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x1b

    .line 309
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 310
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

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
    .line 316
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x1d

    .line 322
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 323
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

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
    .line 328
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 348
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x22

    .line 357
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 358
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

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
    .line 364
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x23

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
    const/16 v1, 0x24

    .line 370
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 371
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

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
    .line 380
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 404
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 412
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x29

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 435
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/twitter/database/generated/gs;->a:Lcom/twitter/database/generated/gq;

    invoke-static {v0}, Lcom/twitter/database/generated/gq;->a(Lcom/twitter/database/generated/gq;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
