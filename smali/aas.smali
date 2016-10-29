.class Laas;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/twitter/model/core/Tweet;

.field final synthetic c:Laar;


# direct methods
.method constructor <init>(Laar;Landroid/view/View;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Laas;->c:Laar;

    iput-object p2, p0, Laas;->a:Landroid/view/View;

    iput-object p3, p0, Laas;->b:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Laas;->c:Laar;

    invoke-static {v0}, Laar;->a(Laar;)Laat;

    move-result-object v0

    iget-object v1, p0, Laas;->a:Landroid/view/View;

    iget-object v2, p0, Laas;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0, v1, v2}, Laat;->a(Landroid/view/View;Lcom/twitter/model/core/Tweet;)V

    .line 64
    iget-object v0, p0, Laas;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 65
    return-void
.end method
