.class Lcom/twitter/library/platform/notifications/ad;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 437
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 438
    iput-object p1, p0, Lcom/twitter/library/platform/notifications/ad;->a:Landroid/content/Context;

    .line 439
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/library/platform/notifications/ad;->b:Ljava/lang/String;

    .line 440
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 444
    iget-object v0, p0, Lcom/twitter/library/platform/notifications/ad;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/twitter/library/platform/notifications/ad;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 445
    return-void
.end method
