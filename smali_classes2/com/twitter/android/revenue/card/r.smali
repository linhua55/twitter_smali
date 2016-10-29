.class Lcom/twitter/android/revenue/card/r;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/revenue/card/p;


# direct methods
.method constructor <init>(Lcom/twitter/android/revenue/card/p;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/twitter/android/revenue/card/r;->a:Lcom/twitter/android/revenue/card/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/twitter/android/revenue/card/r;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v0}, Lcom/twitter/android/revenue/card/p;->b(Lcom/twitter/android/revenue/card/p;)Lcom/twitter/android/card/CardActionHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/revenue/card/r;->a:Lcom/twitter/android/revenue/card/p;

    invoke-static {v1}, Lcom/twitter/android/revenue/card/p;->a(Lcom/twitter/android/revenue/card/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/android/card/CardActionHelper;->b(Ljava/lang/String;)V

    .line 152
    return-void
.end method
