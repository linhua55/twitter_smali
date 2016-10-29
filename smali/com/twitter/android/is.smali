.class Lcom/twitter/android/is;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/twitter/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginActivity;J)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/twitter/android/is;->b:Lcom/twitter/android/LoginActivity;

    iput-wide p2, p0, Lcom/twitter/android/is;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5

    .prologue
    .line 250
    if-eqz p2, :cond_0

    .line 251
    iget-wide v0, p0, Lcom/twitter/android/is;->a:J

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "login:::password:select"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 253
    :cond_0
    return-void
.end method
