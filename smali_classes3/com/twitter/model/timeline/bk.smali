.class public Lcom/twitter/model/timeline/bk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Lcom/twitter/model/timeline/s;

.field public final e:Lcom/twitter/model/timeline/s;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/twitter/model/timeline/s;Lcom/twitter/model/timeline/s;Z)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/twitter/model/timeline/bk;->b:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/twitter/model/timeline/bk;->c:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/twitter/model/timeline/bk;->d:Lcom/twitter/model/timeline/s;

    .line 33
    iput-object p4, p0, Lcom/twitter/model/timeline/bk;->e:Lcom/twitter/model/timeline/s;

    .line 34
    iput-boolean p5, p0, Lcom/twitter/model/timeline/bk;->a:Z

    .line 35
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/timeline/bk;)Z
    .locals 2

    .prologue
    .line 43
    if-eq p0, p1, :cond_0

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/twitter/model/timeline/bk;->a:Z

    iget-boolean v1, p1, Lcom/twitter/model/timeline/bk;->a:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/bk;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/bk;->b:Ljava/lang/String;

    .line 45
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/bk;->c:Ljava/lang/String;

    iget-object v1, p1, Lcom/twitter/model/timeline/bk;->c:Ljava/lang/String;

    .line 46
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/bk;->d:Lcom/twitter/model/timeline/s;

    iget-object v1, p1, Lcom/twitter/model/timeline/bk;->d:Lcom/twitter/model/timeline/s;

    .line 47
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/twitter/model/timeline/bk;->e:Lcom/twitter/model/timeline/s;

    iget-object v1, p1, Lcom/twitter/model/timeline/bk;->e:Lcom/twitter/model/timeline/s;

    .line 48
    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    .line 48
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 39
    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/twitter/model/timeline/bk;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/twitter/model/timeline/bk;

    invoke-virtual {p0, p1}, Lcom/twitter/model/timeline/bk;->a(Lcom/twitter/model/timeline/bk;)Z

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
    .line 54
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/twitter/model/timeline/bk;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/twitter/model/timeline/bk;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/twitter/model/timeline/bk;->c:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/twitter/model/timeline/bk;->d:Lcom/twitter/model/timeline/s;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/twitter/model/timeline/bk;->e:Lcom/twitter/model/timeline/s;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
