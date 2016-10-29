.class Lcom/twitter/android/iv;
.super Lcom/twitter/android/util/i;
.source "Twttr"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field final synthetic a:Lcom/twitter/android/LoginActivity;


# direct methods
.method constructor <init>(Lcom/twitter/android/LoginActivity;Lcom/twitter/internal/android/widget/PopupEditText;)V
    .locals 0

    .prologue
    .line 910
    iput-object p1, p0, Lcom/twitter/android/iv;->a:Lcom/twitter/android/LoginActivity;

    .line 911
    invoke-direct {p0, p2}, Lcom/twitter/android/util/i;-><init>(Lcom/twitter/internal/android/widget/PopupEditText;)V

    .line 912
    invoke-virtual {p2, p0}, Lcom/twitter/internal/android/widget/PopupEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 913
    return-void
.end method

.method private b()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 918
    iget-object v0, p0, Lcom/twitter/android/iv;->b:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 919
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/iv;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v1}, Lcom/twitter/android/LoginActivity;->d(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "login:identifier:%s:typeahead:impression"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/iv;->a:Lcom/twitter/android/LoginActivity;

    .line 921
    invoke-static {v4}, Lcom/twitter/android/LoginActivity;->c(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 920
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 919
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 923
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 933
    invoke-super {p0, p1}, Lcom/twitter/android/util/i;->afterTextChanged(Landroid/text/Editable;)V

    .line 934
    invoke-direct {p0}, Lcom/twitter/android/iv;->b()V

    .line 935
    return-void
.end method

.method public b(I)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 941
    invoke-super {p0, p1}, Lcom/twitter/android/util/i;->b(I)V

    .line 942
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/iv;->a:Lcom/twitter/android/LoginActivity;

    invoke-static {v1}, Lcom/twitter/android/LoginActivity;->e(Lcom/twitter/android/LoginActivity;)Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "login:identifier:%s:typeahead:select"

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/twitter/android/iv;->a:Lcom/twitter/android/LoginActivity;

    .line 944
    invoke-static {v4}, Lcom/twitter/android/LoginActivity;->c(Lcom/twitter/android/LoginActivity;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    .line 943
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 942
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 945
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 927
    invoke-super {p0, p1}, Lcom/twitter/android/util/i;->onClick(Landroid/view/View;)V

    .line 928
    invoke-direct {p0}, Lcom/twitter/android/iv;->b()V

    .line 929
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 949
    iget-object v0, p0, Lcom/twitter/android/iv;->b:Lcom/twitter/internal/android/widget/PopupEditText;

    if-ne p1, v0, :cond_0

    .line 950
    invoke-virtual {p0}, Lcom/twitter/android/iv;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 951
    iget-object v0, p0, Lcom/twitter/android/iv;->b:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->a()V

    .line 952
    invoke-direct {p0}, Lcom/twitter/android/iv;->b()V

    .line 957
    :cond_0
    :goto_0
    return-void

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/iv;->b:Lcom/twitter/internal/android/widget/PopupEditText;

    invoke-virtual {v0}, Lcom/twitter/internal/android/widget/PopupEditText;->b()V

    goto :goto_0
.end method
