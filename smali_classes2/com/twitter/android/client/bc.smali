.class Lcom/twitter/android/client/bc;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/base/m;


# instance fields
.field public a:Ljava/lang/String;

.field final synthetic b:Lcom/twitter/android/client/SearchSuggestionController;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/SearchSuggestionController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 681
    iput-object p1, p0, Lcom/twitter/android/client/bc;->b:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    iput-object p2, p0, Lcom/twitter/android/client/bc;->a:Ljava/lang/String;

    .line 683
    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;II)V
    .locals 3

    .prologue
    .line 687
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 688
    new-instance v0, Lcom/twitter/library/api/search/e;

    iget-object v1, p0, Lcom/twitter/android/client/bc;->b:Lcom/twitter/android/client/SearchSuggestionController;

    .line 689
    invoke-static {v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Lcom/twitter/android/client/SearchSuggestionController;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/client/bc;->b:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v2}, Lcom/twitter/android/client/SearchSuggestionController;->f(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/twitter/library/api/search/e;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;)V

    const/4 v1, 0x2

    .line 690
    invoke-virtual {v0, v1}, Lcom/twitter/library/api/search/e;->d(I)Lcom/twitter/library/service/o;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/api/search/e;

    .line 691
    iget-object v1, p0, Lcom/twitter/android/client/bc;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/twitter/library/api/search/e;->c:Ljava/lang/String;

    .line 692
    iget-object v1, p0, Lcom/twitter/android/client/bc;->b:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v1}, Lcom/twitter/android/client/SearchSuggestionController;->b(Lcom/twitter/android/client/SearchSuggestionController;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/internal/android/service/AsyncOperation;)Ljava/lang/String;

    .line 693
    iget-object v0, p0, Lcom/twitter/android/client/bc;->b:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->b()V

    .line 695
    :cond_0
    return-void
.end method
