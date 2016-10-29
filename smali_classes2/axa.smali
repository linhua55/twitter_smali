.class Laxa;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lawz;


# direct methods
.method constructor <init>(Lawz;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Laxa;->b:Lawz;

    iput-object p2, p0, Laxa;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 304
    .line 305
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 306
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget-object v2, p0, Laxa;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getRight()I

    move-result v2

    iget-object v3, p0, Laxa;->a:Landroid/widget/EditText;

    .line 307
    invoke-virtual {v3}, Landroid/widget/EditText;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 308
    iget-object v1, p0, Laxa;->b:Lawz;

    iget-object v1, v1, Lawz;->a:Lawv;

    invoke-static {v1}, Lawv;->e(Lawv;)Lawu;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 309
    iget-object v1, p0, Laxa;->b:Lawz;

    iget-object v1, v1, Lawz;->a:Lawv;

    invoke-static {v1}, Lawv;->e(Lawv;)Lawu;

    move-result-object v1

    invoke-interface {v1}, Lawu;->c()V

    .line 314
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
