.class public Lcim;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/ui/widget/TextLayoutView;

.field private final b:Lcin;


# direct methods
.method public constructor <init>(Lcom/twitter/ui/widget/TextLayoutView;Landroid/content/res/Resources;)V
    .locals 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcim;->a:Lcom/twitter/ui/widget/TextLayoutView;

    .line 22
    iget-object v0, p0, Lcim;->a:Lcom/twitter/ui/widget/TextLayoutView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TextLayoutView;->a(Z)Lcom/twitter/ui/widget/TextLayoutView;

    .line 23
    new-instance v0, Lcin;

    invoke-direct {v0, p2}, Lcin;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcim;->b:Lcin;

    .line 24
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcim;->a:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/TextLayoutView;->setTextWithVisibility(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)V
    .locals 3

    .prologue
    .line 27
    iget-object v0, p0, Lcim;->b:Lcin;

    .line 28
    invoke-virtual {v0, p1, p2, p3, p4}, Lcin;->a(Lcom/twitter/model/core/Tweet;Lcom/twitter/ui/view/s;J)Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-direct {p0, v0}, Lcim;->a(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcim;->a:Lcom/twitter/ui/widget/TextLayoutView;

    invoke-virtual {p1}, Lcom/twitter/model/core/Tweet;->n()Z

    move-result v1

    invoke-static {v1}, Lcom/twitter/util/a;->a(Z)Landroid/text/Layout$Alignment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/TextLayoutView;->a(Landroid/text/Layout$Alignment;)Lcom/twitter/ui/widget/TextLayoutView;

    .line 31
    return-void
.end method

.method public a(Lcom/twitter/model/core/ay;J)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcim;->b:Lcin;

    invoke-virtual {v0, p1, p2, p3}, Lcin;->a(Lcom/twitter/model/core/ay;J)Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {p0, v0}, Lcim;->a(Ljava/lang/String;)V

    .line 36
    return-void
.end method
