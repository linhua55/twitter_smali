.class Lcom/twitter/android/dm/widget/m;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Lcom/twitter/android/dm/widget/m;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/twitter/android/dm/widget/m;->a:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    invoke-static {v0}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;)V

    .line 439
    return-void
.end method
