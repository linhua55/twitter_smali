.class Lara;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Laqz;


# direct methods
.method constructor <init>(Laqz;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lara;->a:Laqz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lara;->a:Laqz;

    invoke-static {v0}, Laqz;->a(Laqz;)Lcom/twitter/android/client/SearchSuggestionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/android/client/SearchSuggestionController;->e()Z

    .line 39
    return-void
.end method
