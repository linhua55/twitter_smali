.class Lcom/twitter/internal/android/widget/an;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lbjl;

.field final synthetic b:Lcom/twitter/internal/android/widget/ToolBar;


# direct methods
.method constructor <init>(Lcom/twitter/internal/android/widget/ToolBar;Lbjl;)V
    .locals 0

    .prologue
    .line 861
    iput-object p1, p0, Lcom/twitter/internal/android/widget/an;->b:Lcom/twitter/internal/android/widget/ToolBar;

    iput-object p2, p0, Lcom/twitter/internal/android/widget/an;->a:Lbjl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/twitter/internal/android/widget/an;->b:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-static {v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(Lcom/twitter/internal/android/widget/ToolBar;)Lcyh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/twitter/internal/android/widget/an;->b:Lcom/twitter/internal/android/widget/ToolBar;

    invoke-static {v0}, Lcom/twitter/internal/android/widget/ToolBar;->a(Lcom/twitter/internal/android/widget/ToolBar;)Lcyh;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/internal/android/widget/an;->a:Lbjl;

    invoke-interface {v0, v1}, Lcyh;->a(Lcyd;)Z

    .line 867
    :cond_0
    return-void
.end method
