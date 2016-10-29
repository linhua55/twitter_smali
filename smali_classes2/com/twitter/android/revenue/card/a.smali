.class public abstract Lcom/twitter/android/revenue/card/a;
.super Lcom/twitter/library/card/au;
.source "Twttr"

# interfaces
.implements Lcom/twitter/library/card/aa;
.implements Lcom/twitter/library/card/af;


# instance fields
.field private a:J

.field private b:J

.field protected final d_:Lcom/twitter/android/card/i;

.field protected final i:Landroid/content/Context;

.field protected final k:Lcom/twitter/android/card/d;

.field protected l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected m:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field protected n:Lcom/twitter/android/card/CardActionHelper;

.field protected o:Lcom/twitter/library/card/CardContext;

.field protected p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

.field protected q:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/twitter/library/widget/renderablecontent/DisplayMode;Lcom/twitter/android/card/i;Lcom/twitter/android/card/d;)V
    .locals 4

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/twitter/library/card/au;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/twitter/android/revenue/card/a;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/revenue/card/a;->i:Landroid/content/Context;

    .line 38
    iput-object p4, p0, Lcom/twitter/android/revenue/card/a;->k:Lcom/twitter/android/card/d;

    .line 39
    iput-object p3, p0, Lcom/twitter/android/revenue/card/a;->d_:Lcom/twitter/android/card/i;

    .line 40
    iget-object v0, p0, Lcom/twitter/android/revenue/card/a;->d_:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/a;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 41
    new-instance v0, Lcom/twitter/android/card/CardActionHelper;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/a;->k:Lcom/twitter/android/card/d;

    iget-object v2, p0, Lcom/twitter/android/revenue/card/a;->d_:Lcom/twitter/android/card/i;

    iget-object v3, p0, Lcom/twitter/android/revenue/card/a;->p:Lcom/twitter/library/widget/renderablecontent/DisplayMode;

    .line 42
    invoke-static {v3}, Lcom/twitter/android/card/l;->a(Lcom/twitter/library/widget/renderablecontent/DisplayMode;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/twitter/android/card/CardActionHelper;-><init>(Landroid/content/Context;Lcom/twitter/android/card/d;Lcom/twitter/android/card/i;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/revenue/card/a;->n:Lcom/twitter/android/card/CardActionHelper;

    .line 43
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 61
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/a;->a:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->b(JLjava/lang/Object;)V

    .line 62
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/a;->b:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->b(JLjava/lang/Object;)V

    .line 63
    return-void
.end method

.method public a(JLcom/twitter/library/card/CardContext;)V
    .locals 1

    .prologue
    .line 67
    iput-object p3, p0, Lcom/twitter/android/revenue/card/a;->o:Lcom/twitter/library/card/CardContext;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/revenue/card/a;->d_:Lcom/twitter/android/card/i;

    invoke-interface {v0, p3}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/card/CardContext;)V

    .line 69
    return-void
.end method

.method public a(Lcom/twitter/library/card/av;)V
    .locals 4

    .prologue
    .line 47
    iget-wide v0, p1, Lcom/twitter/library/card/av;->a:J

    iput-wide v0, p0, Lcom/twitter/android/revenue/card/a;->a:J

    .line 48
    invoke-static {}, Lcom/twitter/library/card/z;->a()Lcom/twitter/library/card/z;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/a;->a:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/z;->a(JLjava/lang/Object;)V

    .line 49
    iget-wide v0, p1, Lcom/twitter/library/card/av;->b:J

    iput-wide v0, p0, Lcom/twitter/android/revenue/card/a;->b:J

    .line 50
    invoke-static {}, Lcom/twitter/library/card/ae;->a()Lcom/twitter/library/card/ae;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/revenue/card/a;->b:J

    invoke-virtual {v0, v2, v3, p0}, Lcom/twitter/library/card/ae;->a(JLjava/lang/Object;)V

    .line 52
    const-string/jumbo v0, "params_extra_scribe_association"

    const-class v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/a;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 54
    iget-object v0, p0, Lcom/twitter/android/revenue/card/a;->d_:Lcom/twitter/android/card/i;

    iget-object v1, p0, Lcom/twitter/android/revenue/card/a;->l:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)V

    .line 55
    const-string/jumbo v0, "params_extra_source_scribe_association"

    const-class v1, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    invoke-virtual {p1, v0, v1}, Lcom/twitter/library/card/av;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeAssociation;

    iput-object v0, p0, Lcom/twitter/android/revenue/card/a;->m:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 57
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 20
    check-cast p1, Lcom/twitter/library/card/av;

    invoke-virtual {p0, p1}, Lcom/twitter/android/revenue/card/a;->a(Lcom/twitter/library/card/av;)V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/twitter/android/revenue/card/a;->q:Landroid/view/View;

    return-object v0
.end method
