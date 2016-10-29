.class public Lcom/twitter/library/media/widget/ab;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lcom/twitter/util/math/Size;


# direct methods
.method public constructor <init>(Lclw;)V
    .locals 2

    .prologue
    .line 791
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 792
    iput-object p1, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    .line 793
    invoke-virtual {p1}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    .line 794
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v1, v1, Lcom/twitter/model/card/property/Vector2F;->x:F

    iget-object v0, v0, Lcom/twitter/model/card/property/ImageSpec;->d:Lcom/twitter/model/card/property/Vector2F;

    iget v0, v0, Lcom/twitter/model/card/property/Vector2F;->y:F

    invoke-static {v1, v0}, Lcom/twitter/util/math/Size;->a(FF)Lcom/twitter/util/math/Size;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/twitter/library/media/widget/ab;->b:Lcom/twitter/util/math/Size;

    .line 795
    return-void

    .line 794
    :cond_0
    sget-object v0, Lcom/twitter/util/math/Size;->b:Lcom/twitter/util/math/Size;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/twitter/model/core/MediaEntity;)V
    .locals 1

    .prologue
    .line 786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 787
    iput-object p1, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    .line 788
    iget-object v0, p1, Lcom/twitter/model/core/MediaEntity;->n:Lcom/twitter/util/math/Size;

    iput-object v0, p0, Lcom/twitter/library/media/widget/ab;->b:Lcom/twitter/util/math/Size;

    .line 789
    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/media/EditableMedia;)V
    .locals 1

    .prologue
    .line 781
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 782
    iput-object p1, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    .line 783
    invoke-virtual {p1}, Lcom/twitter/model/media/EditableMedia;->f()Lcom/twitter/util/math/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/media/widget/ab;->b:Lcom/twitter/util/math/Size;

    .line 784
    return-void
.end method

.method public static a(Lclw;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lclw;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/media/widget/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 869
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lclw;->r()Lcom/twitter/model/card/property/ImageSpec;

    move-result-object v0

    if-nez v0, :cond_1

    .line 870
    :cond_0
    const/4 v0, 0x0

    .line 872
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/twitter/library/media/widget/ab;

    invoke-direct {v0, p0}, Lcom/twitter/library/media/widget/ab;-><init>(Lclw;)V

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/EditableMedia;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/media/widget/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 843
    if-nez p0, :cond_0

    .line 844
    const/4 v0, 0x0

    .line 851
    :goto_0
    return-object v0

    .line 847
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 848
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/media/EditableMedia;

    .line 849
    new-instance v3, Lcom/twitter/library/media/widget/ab;

    invoke-direct {v3, v0}, Lcom/twitter/library/media/widget/ab;-><init>(Lcom/twitter/model/media/EditableMedia;)V

    invoke-virtual {v1, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 851
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/core/MediaEntity;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/library/media/widget/ab;",
            ">;"
        }
    .end annotation

    .prologue
    .line 856
    if-nez p0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 864
    :goto_0
    return-object v0

    .line 860
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(I)Lcom/twitter/util/collection/r;

    move-result-object v1

    .line 861
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    .line 862
    new-instance v3, Lcom/twitter/library/media/widget/ab;

    invoke-direct {v3, v0}, Lcom/twitter/library/media/widget/ab;-><init>(Lcom/twitter/model/core/MediaEntity;)V

    invoke-virtual {v1, v3}, Lcom/twitter/util/collection/r;->c(Ljava/lang/Object;)Lcom/twitter/util/collection/r;

    goto :goto_1

    .line 864
    :cond_1
    invoke-virtual {v1}, Lcom/twitter/util/collection/r;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/twitter/media/request/b;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_0

    .line 801
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lcom/twitter/model/core/MediaEntity;)Lcom/twitter/media/request/b;

    move-result-object v0

    .line 810
    :goto_0
    return-object v0

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/twitter/model/media/EditableMedia;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/media/EditableMedia;

    .line 804
    invoke-static {p1, v0}, Lcom/twitter/library/media/util/w;->a(Landroid/content/Context;Lcom/twitter/model/media/EditableMedia;)Lcom/twitter/media/request/b;

    move-result-object v0

    goto :goto_0

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lclw;

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lclw;

    invoke-static {v0}, Lcom/twitter/library/media/util/p;->a(Lclw;)Lcom/twitter/media/request/b;

    move-result-object v0

    goto :goto_0

    .line 808
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/twitter/model/core/MediaEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/core/MediaEntity;

    iget-object v0, v0, Lcom/twitter/model/core/MediaEntity;->m:Lcom/twitter/model/core/MediaEntity$Type;

    invoke-static {v0}, Lcug;->a(Lcom/twitter/model/core/MediaEntity$Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lclw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lclw;

    invoke-virtual {v0}, Lclw;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 823
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    instance-of v0, v0, Lcom/twitter/model/core/a;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/model/core/a;

    invoke-interface {v0}, Lcom/twitter/model/core/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 826
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 831
    instance-of v0, p1, Lcom/twitter/library/media/widget/ab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    check-cast p1, Lcom/twitter/library/media/widget/ab;

    iget-object v1, p1, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    .line 832
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 831
    :goto_0
    return v0

    .line 832
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/twitter/library/media/widget/ab;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
