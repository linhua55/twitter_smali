.class Lcom/twitter/android/notificationtimeline/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;


# direct methods
.method constructor <init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/h;->b:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    iput-object p2, p0, Lcom/twitter/android/notificationtimeline/h;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/h;->b:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v0}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->c(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/h;->a:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/notificationtimeline/k;

    iget-object v0, v0, Lcom/twitter/android/notificationtimeline/k;->b:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 138
    return-void
.end method
