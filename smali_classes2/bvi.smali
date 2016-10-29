.class public final Lbvi;
.super Lcom/twitter/util/object/h;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/util/object/h",
        "<",
        "Lbvh;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/twitter/library/client/Session;

.field private c:Z

.field private d:Z

.field private e:[J

.field private f:[J

.field private g:Z

.field private h:Z

.field private i:Lcom/twitter/library/provider/dm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/twitter/util/object/h;-><init>()V

    return-void
.end method

.method static synthetic a(Lbvi;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbvi;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbvi;)Lcom/twitter/library/client/Session;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbvi;->b:Lcom/twitter/library/client/Session;

    return-object v0
.end method

.method static synthetic c(Lbvi;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lbvi;->c:Z

    return v0
.end method

.method static synthetic d(Lbvi;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lbvi;->d:Z

    return v0
.end method

.method static synthetic e(Lbvi;)[J
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbvi;->e:[J

    return-object v0
.end method

.method static synthetic f(Lbvi;)[J
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbvi;->f:[J

    return-object v0
.end method

.method static synthetic g(Lbvi;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lbvi;->g:Z

    return v0
.end method

.method static synthetic h(Lbvi;)Z
    .locals 1

    .prologue
    .line 143
    iget-boolean v0, p0, Lbvi;->h:Z

    return v0
.end method

.method static synthetic i(Lbvi;)Lcom/twitter/library/provider/dm;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lbvi;->i:Lcom/twitter/library/provider/dm;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lbvi;
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lbvi;->a:Landroid/content/Context;

    .line 157
    return-object p0
.end method

.method public a(Lcom/twitter/library/client/Session;)Lbvi;
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lbvi;->b:Lcom/twitter/library/client/Session;

    .line 163
    return-object p0
.end method

.method public a(Lcom/twitter/library/provider/dm;)Lbvi;
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lbvi;->i:Lcom/twitter/library/provider/dm;

    .line 205
    return-object p0
.end method

.method public a([J)Lbvi;
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lbvi;->e:[J

    .line 199
    return-object p0
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 143
    invoke-virtual {p0}, Lbvi;->e()Lbvh;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lbvh;
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lbvh;

    invoke-direct {v0, p0}, Lbvh;-><init>(Lbvi;)V

    return-object v0
.end method
