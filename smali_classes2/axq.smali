.class Laxq;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Laxp;)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Laxq;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Laxq;->a:Ljava/lang/String;

    .line 183
    iput-object v0, p0, Laxq;->b:Ljava/lang/String;

    .line 184
    iput-object v0, p0, Laxq;->c:Ljava/lang/String;

    .line 185
    iput-object v0, p0, Laxq;->d:Ljava/lang/String;

    .line 186
    iput-boolean v1, p0, Laxq;->e:Z

    .line 187
    iput-boolean v1, p0, Laxq;->f:Z

    .line 188
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Laxq;->c:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 203
    iput-object p1, p0, Laxq;->a:Ljava/lang/String;

    .line 204
    iput-object p2, p0, Laxq;->b:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxq;->e:Z

    .line 192
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Laxq;->d:Ljava/lang/String;

    .line 213
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Laxq;->f:Z

    .line 196
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 199
    iget-boolean v0, p0, Laxq;->f:Z

    return v0
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Laxq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxq;->a:Ljava/lang/String;

    iget-object v1, p0, Laxq;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Laxq;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laxq;->b:Ljava/lang/String;

    iget-object v1, p0, Laxq;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
