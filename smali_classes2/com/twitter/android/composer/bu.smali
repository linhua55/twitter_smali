.class public Lcom/twitter/android/composer/bu;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lst;

.field private final b:Lcom/twitter/android/composer/bx;


# direct methods
.method public constructor <init>(Lst;Lcom/twitter/android/composer/bx;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/twitter/android/composer/bu;->b:Lcom/twitter/android/composer/bx;

    .line 19
    iput-object p1, p0, Lcom/twitter/android/composer/bu;->a:Lst;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/composer/bu;Ljava/lang/CharSequence;II)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/composer/bu;->a(Ljava/lang/CharSequence;II)V

    return-void
.end method

.method private a(Ljava/lang/CharSequence;II)V
    .locals 7

    .prologue
    const/16 v4, 0x21

    const/4 v2, 0x0

    .line 33
    add-int v0, p2, p3

    .line 34
    add-int/lit8 v1, p2, -0x1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 35
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v0, v0, 0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 36
    check-cast p1, Landroid/text/Spannable;

    .line 39
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-interface {p1, v3, v1, v0, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 43
    :try_start_0
    const-class v4, Lcom/twitter/android/composer/bw;

    invoke-interface {p1, v1, v0, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/twitter/android/composer/bw;

    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v0, v2

    .line 44
    iget-object v6, p0, Lcom/twitter/android/composer/bu;->b:Lcom/twitter/android/composer/bx;

    invoke-interface {v6, v5}, Lcom/twitter/android/composer/bx;->a(Lcom/twitter/android/composer/bw;)V

    .line 45
    invoke-interface {p1, v5}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 48
    :goto_1
    invoke-interface {p1, v3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 49
    iget-object v1, p0, Lcom/twitter/android/composer/bu;->a:Lst;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, p1, v2}, Lst;->a_(Ljava/lang/CharSequence;I)Lsu;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    new-instance v0, Lcom/twitter/android/composer/bw;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2}, Lcom/twitter/android/composer/bw;-><init>(Landroid/text/Spannable;Lcom/twitter/android/composer/bv;)V

    .line 52
    iget v2, v1, Lsu;->a:I

    iget v1, v1, Lsu;->b:I

    const/16 v4, 0x21

    invoke-interface {p1, v0, v2, v1, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 53
    iget-object v1, p0, Lcom/twitter/android/composer/bu;->b:Lcom/twitter/android/composer/bx;

    invoke-interface {v1, v0}, Lcom/twitter/android/composer/bx;->b(Lcom/twitter/android/composer/bw;)V

    .line 56
    invoke-interface {p1, v0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 57
    goto :goto_1

    .line 61
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 65
    :cond_1
    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 67
    return-void

    .line 65
    :catchall_0
    move-exception v0

    invoke-interface {p1, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/android/composer/bv;

    invoke-direct {v0, p0}, Lcom/twitter/android/composer/bv;-><init>(Lcom/twitter/android/composer/bu;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 29
    return-void
.end method
