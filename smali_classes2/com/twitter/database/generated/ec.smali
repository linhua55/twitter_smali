.class Lcom/twitter/database/generated/ec;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/dy;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/dy;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 832
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 838
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x54

    .line 856
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 857
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

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
    .line 863
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x56

    .line 869
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 870
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

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
    .line 875
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 880
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x5b

    .line 904
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 905
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

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
    .line 911
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5c

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
    const/16 v1, 0x5d

    .line 917
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 918
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

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
    .line 927
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 943
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 967
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 990
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/twitter/database/generated/ec;->a:Lcom/twitter/database/generated/dy;

    invoke-static {v0}, Lcom/twitter/database/generated/dy;->a(Lcom/twitter/database/generated/dy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
