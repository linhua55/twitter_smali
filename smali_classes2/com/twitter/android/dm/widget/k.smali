.class Lcom/twitter/android/dm/widget/k;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;


# direct methods
.method constructor <init>(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Ljava/util/Set;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/twitter/android/dm/widget/k;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iput-object p2, p0, Lcom/twitter/android/dm/widget/k;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 346
    iget-object v0, p0, Lcom/twitter/android/dm/widget/k;->b:Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;

    iget-object v1, p0, Lcom/twitter/android/dm/widget/k;->a:Ljava/util/Set;

    invoke-static {v0, v1}, Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;->a(Lcom/twitter/android/dm/widget/SentMessageReadReceiptsBylineView;Ljava/util/Set;)V

    .line 347
    return-void
.end method
