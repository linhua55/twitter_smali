.class public Lcom/twitter/android/client/bg;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/kn;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/twitter/android/kn",
        "<",
        "Landroid/view/View;",
        "Lcom/twitter/library/scribe/TwitterScribeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/twitter/android/client/SearchSuggestionController;


# direct methods
.method public constructor <init>(Lcom/twitter/android/client/SearchSuggestionController;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcom/twitter/android/client/bg;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lcom/twitter/library/scribe/TwitterScribeItem;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 629
    if-eqz p2, :cond_0

    .line 630
    iget-object v0, p0, Lcom/twitter/android/client/bg;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v0}, Lcom/twitter/android/client/SearchSuggestionController;->c(Lcom/twitter/android/client/SearchSuggestionController;)Ljava/lang/String;

    move-result-object v1

    .line 631
    iget-object v0, p0, Lcom/twitter/android/client/bg;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v0}, Lcom/twitter/android/client/SearchSuggestionController;->d(Lcom/twitter/android/client/SearchSuggestionController;)Lcom/twitter/android/client/bb;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/client/bb;

    iget-object v2, p2, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/twitter/android/client/bb;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iput-object v1, p2, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 633
    const-string/jumbo v0, "position"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lcom/twitter/library/scribe/TwitterScribeItem;->g:I

    .line 634
    iget-object v0, p0, Lcom/twitter/android/client/bg;->a:Lcom/twitter/android/client/SearchSuggestionController;

    invoke-static {v0}, Lcom/twitter/android/client/SearchSuggestionController;->e(Lcom/twitter/android/client/SearchSuggestionController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 637
    :cond_0
    return-void
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 625
    check-cast p2, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-virtual {p0, p1, p2, p3}, Lcom/twitter/android/client/bg;->a(Landroid/view/View;Lcom/twitter/library/scribe/TwitterScribeItem;Landroid/os/Bundle;)V

    return-void
.end method
