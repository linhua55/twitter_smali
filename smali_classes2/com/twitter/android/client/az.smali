.class Lcom/twitter/android/client/az;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/client/SearchSuggestionController;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/SearchSuggestionController;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/twitter/android/client/az;->a:Lcom/twitter/android/client/SearchSuggestionController;

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
    .line 203
    iget-object v0, p0, Lcom/twitter/android/client/az;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-virtual {v0, p3}, Lcom/twitter/android/client/SearchSuggestionController;->b(I)V

    .line 204
    return-void
.end method
