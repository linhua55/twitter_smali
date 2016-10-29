.class Lcom/twitter/android/notificationtimeline/f;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;


# direct methods
.method constructor <init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/f;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 74
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/f;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Lcom/twitter/internal/android/widget/DropDownListView;

    move-result-object v0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 75
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/twitter/internal/android/widget/DropDownListView;->measure(II)V

    .line 78
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/f;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Lcom/twitter/internal/android/widget/DropDownListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/DropDownListView;->getMeasuredHeight()I

    move-result v0

    neg-int v0, v0

    .line 79
    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/f;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->c(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/notificationtimeline/f;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v2}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 80
    return-void
.end method
