.class Lcom/twitter/database/generated/gg;
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
    .line 742
    iput-object p1, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 929
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 935
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 749
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 758
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 770
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 776
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x45

    .line 782
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 783
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

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
    .line 789
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x47

    .line 795
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 796
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

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
    .line 801
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 806
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x4c

    .line 830
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 831
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

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
    .line 837
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4d

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
    const/16 v1, 0x4e

    .line 843
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 844
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

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
    .line 853
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 861
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x50

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x51

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x52

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 885
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x53

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 893
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x54

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 898
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x55

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x56

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x57

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x58

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/twitter/database/generated/gg;->a:Lcom/twitter/database/generated/gd;

    invoke-static {v0}, Lcom/twitter/database/generated/gd;->a(Lcom/twitter/database/generated/gd;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x59

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
