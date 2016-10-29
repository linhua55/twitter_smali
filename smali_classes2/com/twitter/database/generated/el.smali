.class Lcom/twitter/database/generated/el;
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
    .line 611
    iput-object p1, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()J
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public B()Ljava/lang/String;
    .locals 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x4c

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()J
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x31

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 633
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x35

    .line 651
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 652
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

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
    .line 658
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x36

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/twitter/model/core/bm;
    .locals 2

    .prologue
    const/16 v1, 0x37

    .line 664
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 665
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

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
    .line 670
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x38

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public j()I
    .locals 2

    .prologue
    .line 675
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 681
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x3a

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .prologue
    .line 690
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/twitter/model/profile/ExtendedProfile;
    .locals 2

    .prologue
    const/16 v1, 0x3c

    .line 699
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 700
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

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
    .line 706
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x3d

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
    const/16 v1, 0x3e

    .line 712
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 713
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

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
    .line 722
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public q()J
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public r()J
    .locals 2

    .prologue
    .line 738
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x41

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public s()J
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public t()J
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public u()J
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public v()J
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x45

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public w()I
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x46

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 777
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x47

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 785
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x48

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public z()J
    .locals 2

    .prologue
    .line 793
    iget-object v0, p0, Lcom/twitter/database/generated/el;->a:Lcom/twitter/database/generated/ei;

    invoke-static {v0}, Lcom/twitter/database/generated/ei;->a(Lcom/twitter/database/generated/ei;)Landroid/database/Cursor;

    move-result-object v0

    const/16 v1, 0x49

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method
