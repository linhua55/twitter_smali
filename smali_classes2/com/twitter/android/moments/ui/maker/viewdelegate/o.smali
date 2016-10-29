.class Lcom/twitter/android/moments/ui/maker/viewdelegate/o;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field final synthetic a:Lamr;

.field final synthetic b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;


# direct methods
.method constructor <init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;Lamr;)V
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->a:Lamr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 64
    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->a:Lamr;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    invoke-static {v1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->b(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;->b:Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    .line 67
    invoke-static {v2}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 66
    invoke-interface {v0, v1, v2}, Lamr;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x1

    .line 70
    :cond_0
    return v0
.end method
