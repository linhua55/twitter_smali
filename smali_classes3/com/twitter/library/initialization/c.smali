.class Lcom/twitter/library/initialization/c;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/twitter/library/initialization/FeatureSwitchesInitializer;


# direct methods
.method constructor <init>(Lcom/twitter/library/initialization/FeatureSwitchesInitializer;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/twitter/library/initialization/c;->b:Lcom/twitter/library/initialization/FeatureSwitchesInitializer;

    iput-object p2, p0, Lcom/twitter/library/initialization/c;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;JZ)V
    .locals 0

    .prologue
    .line 66
    invoke-static {p1, p2, p3}, Lcbq;->a(Landroid/content/Context;J)V

    .line 67
    if-eqz p4, :cond_0

    .line 68
    invoke-static {}, Lcbq;->b()V

    .line 69
    invoke-static {}, Lcbo;->a()V

    .line 71
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/twitter/library/client/ad;->a(Lcom/twitter/library/client/Session;)V

    .line 62
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcbq;->a(J)V

    .line 63
    return-void
.end method

.method public a(Lcom/twitter/library/client/Session;Z)V
    .locals 4

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/ad;->a(Lcom/twitter/library/client/Session;Z)V

    .line 56
    iget-object v0, p0, Lcom/twitter/library/initialization/c;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/twitter/library/initialization/c;->a(Landroid/content/Context;JZ)V

    .line 57
    return-void
.end method

.method public b(Lcom/twitter/library/client/Session;Z)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1, p2}, Lcom/twitter/library/client/ad;->b(Lcom/twitter/library/client/Session;Z)V

    .line 48
    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcbq;->a(J)V

    .line 51
    :cond_0
    return-void
.end method
