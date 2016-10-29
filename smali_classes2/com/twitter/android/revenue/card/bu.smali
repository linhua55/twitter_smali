.class Lcom/twitter/android/revenue/card/bu;
.super Lcom/twitter/library/util/z;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/bs;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/bs;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/twitter/android/revenue/card/bu;->a:Lcom/twitter/android/revenue/card/bs;

    invoke-direct {p0, p2}, Lcom/twitter/library/util/z;-><init>(Lcom/twitter/ui/widget/TwitterButton;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/twitter/android/revenue/card/bu;->a:Lcom/twitter/android/revenue/card/bs;

    invoke-static {v0, p1, p2}, Lcom/twitter/android/revenue/card/bs;->a(Lcom/twitter/android/revenue/card/bs;Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 242
    return-void
.end method
