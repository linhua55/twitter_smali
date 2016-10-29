.class Lcom/twitter/database/generated/lr;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lbeq;


# instance fields
.field final synthetic a:Lcom/twitter/database/generated/lp;


# direct methods
.method constructor <init>(Lcom/twitter/database/generated/lp;)V
    .locals 0

    .prologue
    .line 1788
    iput-object p1, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1975
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1981
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1987
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 1795
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 1804
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xa9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1810
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xaa

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xab

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1822
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xac

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0xad

    .line 1828
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1829
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

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
    .line 1835
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xae

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0xaf

    .line 1841
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1842
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

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
    .line 1847
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 1852
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1858
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0xb4

    .line 1876
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1877
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

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
    .line 1883
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb5

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
    const/16 v1, 0xb6

    .line 1889
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1890
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

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
    .line 1899
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 1907
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1915
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xb9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 1923
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xba

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1931
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xbb

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xbc

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xbd

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 1949
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xbe

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xbf

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1962
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/twitter/database/generated/lr;->a:Lcom/twitter/database/generated/lp;

    invoke-static {v0}, Lcom/twitter/database/generated/lp;->a(Lcom/twitter/database/generated/lp;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0xc1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
