.class Lcaw;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcav;


# direct methods
.method constructor <init>(Lcav;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcaw;->b:Lcav;

    iput-object p2, p0, Lcaw;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 70
    iget-object v0, p0, Lcaw;->b:Lcav;

    iget-object v2, p0, Lcaw;->a:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v0, v2, v3, v4}, Lcav;->a(Lcav;Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcaw;->a:Landroid/view/View;

    .line 71
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 72
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 74
    iget-object v1, p0, Lcaw;->b:Lcav;

    invoke-static {v1}, Lcav;->a(Lcav;)Lcwe;

    move-result-object v1

    invoke-virtual {v1}, Lcwe;->e()V

    .line 76
    :cond_0
    return v0

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
