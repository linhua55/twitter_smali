.class Lcom/twitter/database/generated/gk;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/gd;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/gd;)V
    .locals 0

    .prologue
    .line 1465
    iput-object p1, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xaf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1658
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1664
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 1472
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x95

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 1481
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x96

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1487
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x97

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x98

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1499
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x99

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x9a

    .line 1505
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1506
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

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
    .line 1512
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x9b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x9c

    .line 1518
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1519
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

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
    .line 1524
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x9d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x9e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x9f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0xa1

    .line 1553
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1554
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

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
    .line 1560
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa2

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
    const/16 v1, 0xa3

    .line 1566
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1567
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

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
    .line 1576
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1592
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 1621
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 1626
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xab

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1631
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xac

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xad

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/twitter/database/generated/gk;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xae

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
