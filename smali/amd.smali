.class Lamd;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic a:Lamc;


# direct methods
.method constructor <init>(Lamc;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lamd;->a:Lamc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0}, Lamc;->a(Lamc;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 86
    iget-object v0, p0, Lamd;->a:Lamc;

    invoke-static {v0}, Lamc;->b(Lamc;)V

    .line 87
    return-void
.end method
