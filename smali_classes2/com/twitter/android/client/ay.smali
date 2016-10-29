.class Lcom/twitter/android/client/ay;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/SearchSuggestionController;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/SearchSuggestionController;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/twitter/android/client/ay;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/twitter/android/client/ay;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v0}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/internal/android/widget/PopupEditText;

    move-result-object v1

    .line 106
    invoke-static {v1}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->requestFocus()Z

    .line 107
    iget-object v0, p0, Lcom/twitter/android/client/ay;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0, v1}, Lcom/twitter/android/client/SearchSuggestionController;->a(Lcom/twitter/internal/android/widget/PopupEditText;)V

    .line 108
    iget-object v0, p0, Lcom/twitter/android/client/ay;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v0}, Lcom/twitter/android/client/SearchSuggestionController;->b(Lcom/twitter/android/client/SearchSuggestionController;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/twitter/util/ui/r;->b(Landroid/content/Context;Landroid/view/View;Z)V

    .line 109
    return-void
.end method
