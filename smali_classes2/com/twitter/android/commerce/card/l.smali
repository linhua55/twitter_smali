.class public Lcom/twitter/android/commerce/card/l;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/revenue/card/i;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/revenue/card/o;Lcom/twitter/library/card/CardContext;)Lcom/twitter/android/commerce/card/j;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/twitter/android/commerce/card/j;

    invoke-static {p1}, Lcom/twitter/android/commerce/card/CommerceCardActionHandler;->a(Lcom/twitter/android/revenue/card/o;)Lcom/twitter/android/commerce/card/CommerceCardActionHandler;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/twitter/android/commerce/card/j;-><init>(Lcom/twitter/android/revenue/card/o;Lcom/twitter/android/commerce/card/CommerceCardActionHandler;)V

    return-object v0
.end method

.method public synthetic b(Lcom/twitter/android/revenue/card/o;Lcom/twitter/library/card/CardContext;)Lcom/twitter/android/revenue/card/bb;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/twitter/android/commerce/card/l;->a(Lcom/twitter/android/revenue/card/o;Lcom/twitter/library/card/CardContext;)Lcom/twitter/android/commerce/card/j;

    move-result-object v0

    return-object v0
.end method
