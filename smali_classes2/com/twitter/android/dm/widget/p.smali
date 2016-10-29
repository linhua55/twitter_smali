.class Lcom/twitter/android/dm/widget/p;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/twitter/android/dm/widget/p;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 472
    iget-object v0, p0, Lcom/twitter/android/dm/widget/p;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-object v0, v0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/twitter/android/dm/widget/p;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-object v0, v0, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->d:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 474
    iget-object v0, p0, Lcom/twitter/android/dm/widget/p;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Z)Z

    .line 475
    return-void
.end method
