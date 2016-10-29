.class Lcom/twitter/android/om;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/android/on;

.field public final d:Z

.field public final e:Z

.field public final f:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/android/on;ZZZ)V
    .locals 0

    .prologue
    .line 1721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1722
    iput-object p1, p0, Lcom/twitter/android/om;->a:Ljava/lang/String;

    .line 1723
    iput-object p2, p0, Lcom/twitter/android/om;->b:Ljava/lang/String;

    .line 1724
    iput-object p3, p0, Lcom/twitter/android/om;->c:Lcom/twitter/android/on;

    .line 1725
    iput-boolean p4, p0, Lcom/twitter/android/om;->d:Z

    .line 1726
    iput-boolean p5, p0, Lcom/twitter/android/om;->e:Z

    .line 1727
    iput-boolean p6, p0, Lcom/twitter/android/om;->f:Z

    .line 1728
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/om;)Z
    .locals 2

    .prologue
    .line 1736
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/twitter/android/om;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/om;->a:Ljava/lang/String;

    .line 1737
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/om;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/android/om;->b:Ljava/lang/String;

    .line 1738
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/android/om;->c:Lcom/twitter/android/on;

    iget-object v1, p1, Lcom/twitter/android/om;->c:Lcom/twitter/android/on;

    .line 1739
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/om;->d:Z

    iget-boolean v1, p1, Lcom/twitter/android/om;->d:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/om;->e:Z

    iget-boolean v1, p1, Lcom/twitter/android/om;->e:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/android/om;->f:Z

    iget-boolean v1, p1, Lcom/twitter/android/om;->f:Z

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 1736
    :goto_0
    return v0

    .line 1739
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 1732
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/android/om;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/android/om;

    invoke-virtual {p0, p1}, Lcom/twitter/android/om;->a(Lcom/twitter/android/om;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1747
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/twitter/android/om;->a:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/android/om;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/android/om;->c:Lcom/twitter/android/on;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/twitter/android/om;->d:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/twitter/android/om;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/twitter/android/om;->f:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
