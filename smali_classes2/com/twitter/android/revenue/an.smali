.class Lcom/twitter/android/revenue/an;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "Twttr"


# instance fields
.field private a:I

.field private final b:Lcom/twitter/model/core/Tweet;

.field private final c:Lcfs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcfs",
            "<",
            "Lcft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/model/core/Tweet;Lcfs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/core/Tweet;",
            "Lcfs",
            "<",
            "Lcft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/twitter/android/revenue/an;->b:Lcom/twitter/model/core/Tweet;

    .line 154
    iput-object p2, p0, Lcom/twitter/android/revenue/an;->c:Lcfs;

    .line 155
    return-void
.end method

.method private a(Z)V
    .locals 4

    .prologue
    .line 172
    iget-object v0, p0, Lcom/twitter/android/revenue/an;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v0}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    if-eqz p1, :cond_1

    const/4 v0, 0x2

    .line 175
    :goto_0
    invoke-static {v0}, Lcfo;->a(I)Lcfo;

    move-result-object v0

    invoke-static {v0}, Lcfq;->a(Lcfr;)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/twitter/android/revenue/an;->c:Lcfs;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->aC:Lcom/twitter/library/api/PromotedEvent;

    iget-object v3, p0, Lcom/twitter/android/revenue/an;->b:Lcom/twitter/model/core/Tweet;

    invoke-virtual {v3}, Lcom/twitter/model/core/Tweet;->af()Lcss;

    move-result-object v3

    invoke-static {v2, v3}, Lcft;->a(Lcom/twitter/library/api/PromotedEvent;Lcss;)Lcfv;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v0}, Lcfv;->d(Ljava/lang/String;)Lcfv;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcfv;->a()Lcft;

    move-result-object v0

    .line 176
    invoke-interface {v1, v0}, Lcfs;->a(Ljava/lang/Object;)V

    .line 180
    :cond_0
    return-void

    .line 173
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(I)V
    .locals 0

    .prologue
    .line 168
    iput p1, p0, Lcom/twitter/android/revenue/an;->a:I

    .line 169
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .prologue
    .line 159
    iget v0, p0, Lcom/twitter/android/revenue/an;->a:I

    if-eq v0, p1, :cond_0

    .line 160
    iget v0, p0, Lcom/twitter/android/revenue/an;->a:I

    if-ge v0, p1, :cond_1

    const/4 v0, 0x1

    .line 161
    :goto_0
    invoke-direct {p0, v0}, Lcom/twitter/android/revenue/an;->a(Z)V

    .line 164
    :cond_0
    iput p1, p0, Lcom/twitter/android/revenue/an;->a:I

    .line 165
    return-void

    .line 160
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
