.class Lcom/twitter/android/th;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/twitter/model/core/Tweet;

.field final synthetic b:Lcom/twitter/android/sn;


# direct methods
.method constructor <init>(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/twitter/android/th;->b:Lcom/twitter/android/sn;

    iput-object p2, p0, Lcom/twitter/android/th;->a:Lcom/twitter/model/core/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .prologue
    .line 553
    iget-object v0, p0, Lcom/twitter/android/th;->b:Lcom/twitter/android/sn;

    iget-object v1, p0, Lcom/twitter/android/th;->a:Lcom/twitter/model/core/Tweet;

    sget-object v2, Lcom/twitter/library/api/PromotedEvent;->i:Lcom/twitter/library/api/PromotedEvent;

    const-string/jumbo v3, ""

    const-string/jumbo v4, "dismiss"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twitter/android/sn;->a(Lcom/twitter/android/sn;Lcom/twitter/model/core/Tweet;Lcom/twitter/library/api/PromotedEvent;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    return-void
.end method
