.class Lcom/twitter/android/ir;
.super Lcom/twitter/util/ui/e;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginActivity;

.field private b:Z

.field private final c:Z


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginActivity;)V
    .locals 1

    .prologue
    .line 229
    iput-object p1, p0, Lcom/twitter/android/ir;->a:Lcom/twitter/android/LoginActivity;

    invoke-direct {p0}, Lcom/twitter/util/ui/e;-><init>()V

    .line 230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/ir;->b:Z

    .line 231
    iget-object v0, p0, Lcom/twitter/android/ir;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->a(Lcom/twitter/android/LoginActivity;)Lcom/twitter/ui/widget/TwitterEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/ui/widget/TwitterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/twitter/android/ir;->c:Z

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 239
    iget-boolean v0, p0, Lcom/twitter/android/ir;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/ir;->b:Z

    if-nez v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/twitter/android/ir;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v0}, Lcom/twitter/android/LoginActivity;->b(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    new-array v2, v5, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "login:::username:edit"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/twitter/android/iz;->a(J[Ljava/lang/String;)V

    .line 241
    iput-boolean v5, p0, Lcom/twitter/android/ir;->b:Z

    .line 243
    :cond_0
    return-void
.end method
