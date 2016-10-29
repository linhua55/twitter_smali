.class Lcom/twitter/android/revenue/card/t;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/p;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/twitter/android/revenue/card/t;->a:Lcom/twitter/android/revenue/card/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 302
    iget-object v0, p0, Lcom/twitter/android/revenue/card/t;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/p;->c(Lcom/twitter/android/revenue/card/p;)Lcom/twitter/android/card/i;

    move-result-object v0

    sget-object v1, Lcom/twitter/library/api/PromotedEvent;->o:Lcom/twitter/library/api/PromotedEvent;

    invoke-interface {v0, v1}, Lcom/twitter/android/card/i;->a(Lcom/twitter/library/api/PromotedEvent;)V

    .line 303
    iget-object v0, p0, Lcom/twitter/android/revenue/card/t;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/p;->d(Lcom/twitter/android/revenue/card/p;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/revenue/card/u;

    .line 304
    iget-object v1, p0, Lcom/twitter/android/revenue/card/t;->a:Lcom/twitter/android/revenue/card/p;

    iget-object v2, v0, Lcom/twitter/android/revenue/card/u;->b:Ljava/lang/String;

    iget v0, v0, Lcom/twitter/android/revenue/card/u;->d:I

    invoke-virtual {v1, v2, v0}, Lcom/twitter/android/revenue/card/p;->a(Ljava/lang/String;I)V

    .line 305
    return-void
.end method
