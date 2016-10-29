.class Lcom/twitter/database/generated/if;
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
    .line 917
    iput-object p1, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 1104
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x75

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x76

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x77

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 939
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x5f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x60

    .line 957
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 958
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

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
    .line 964
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x61

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x62

    .line 970
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 971
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

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
    .line 976
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x63

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x64

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 996
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x67

    .line 1005
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1006
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

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
    .line 1012
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x68

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
    const/16 v1, 0x69

    .line 1018
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1019
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

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
    .line 1028
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6d

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 1060
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6e

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x6f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 1073
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x71

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x73

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 1099
    iget-object v0, p0, Lcom/twitter/database/generated/if;->a:Lcom/twitter/database/generated/hy;

    invoke-static {v0}, Lcom/twitter/database/generated/hy;->a(Lcom/twitter/database/generated/hy;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
