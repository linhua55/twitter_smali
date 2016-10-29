.class Lcom/twitter/database/generated/em;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/ei;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/ei;)V
    .locals 0

    .prologue
    .line 828
    iput-object p1, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x69

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 835
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 862
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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

    .line 868
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 869
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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
    .line 875
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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

    .line 881
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 882
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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
    .line 887
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 907
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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

    .line 916
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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
    .line 923
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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

    .line 929
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 930
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

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
    .line 939
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 947
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x60

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 963
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 971
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x62

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 979
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 989
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 994
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/twitter/database/generated/em;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
