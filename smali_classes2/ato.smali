.class Lato;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Latl;


# direct methods
.method constructor <init>(Latl;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lato;->a:Latl;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lato;->a:Latl;

    invoke-static {v0, p1, p2}, Latl;->a(Latl;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 211
    return-void
.end method
