.class public Lcom/twitter/android/moments/ui/maker/viewdelegate/n;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/app/common/inject/m;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lcom/twitter/media/ui/image/MediaImageView;

.field private final c:Landroid/widget/EditText;

.field private final d:Landroid/widget/EditText;

.field private final e:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a:Landroid/view/View;

    .line 45
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c:Landroid/widget/EditText;

    .line 46
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->d:Landroid/widget/EditText;

    .line 47
    iput-object p4, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->b:Lcom/twitter/media/ui/image/MediaImageView;

    .line 48
    iput-object p5, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->e:Landroid/view/inputmethod/InputMethodManager;

    .line 49
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->e:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 51
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->e:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v3, v3}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 52
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->e:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/app/Activity;)Lcom/twitter/android/moments/ui/maker/viewdelegate/n;
    .locals 6

    .prologue
    .line 32
    const v0, 0x7f0401bf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 33
    const v0, 0x7f13049f

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 34
    const v0, 0x7f1304a0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 35
    const v0, 0x7f13049e

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/twitter/media/ui/image/MediaImageView;

    .line 36
    const-string/jumbo v0, "input_method"

    .line 37
    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    .line 38
    new-instance v0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;-><init>(Landroid/widget/EditText;Landroid/widget/EditText;Landroid/view/View;Lcom/twitter/media/ui/image/MediaImageView;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public a(Lamr;)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/moments/ui/maker/viewdelegate/o;-><init>(Lcom/twitter/android/moments/ui/maker/viewdelegate/n;Lamr;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 73
    return-void
.end method

.method public a(Lcom/twitter/media/request/b;)V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->b:Lcom/twitter/media/ui/image/MediaImageView;

    invoke-virtual {v0, p1}, Lcom/twitter/media/ui/image/MediaImageView;->b(Lcom/twitter/media/request/b;)Z

    .line 85
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->d:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->a:Landroid/view/View;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/viewdelegate/n;->c:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 81
    return-void
.end method
