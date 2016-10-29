.class Lcom/twitter/android/timeline/h;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/widget/cw;


# instance fields
.field final synthetic a:Lcom/twitter/android/timeline/e;


# direct methods
.method private constructor <init>(Lcom/twitter/android/timeline/e;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/twitter/android/timeline/h;->a:Lcom/twitter/android/timeline/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/timeline/e;Lcom/twitter/android/timeline/f;)V
    .locals 0

    .prologue
    .line 263
    invoke-direct {p0, p1}, Lcom/twitter/android/timeline/h;-><init>(Lcom/twitter/android/timeline/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/android/widget/NewItemBannerView;)V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/twitter/android/timeline/h;->a:Lcom/twitter/android/timeline/e;

    invoke-static {v0}, Lcom/twitter/android/timeline/e;->a(Lcom/twitter/android/timeline/e;)V

    .line 267
    iget-object v0, p0, Lcom/twitter/android/timeline/h;->a:Lcom/twitter/android/timeline/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/twitter/android/timeline/e;->a(Lcom/twitter/android/timeline/e;Z)Z

    .line 268
    return-void
.end method

.method public b(Lcom/twitter/android/widget/NewItemBannerView;)V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/twitter/android/timeline/h;->a:Lcom/twitter/android/timeline/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/timeline/e;->a(Lcom/twitter/android/timeline/e;Z)Z

    .line 273
    return-void
.end method
