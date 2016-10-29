.class public Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;

.field private final b:Landroid/widget/TextView;

.field private final c:Landroid/widget/TextView;

.field private final d:Landroid/view/View;

.field private final e:Landroid/view/View;

.field private final f:Landroid/widget/PopupWindow;

.field private final g:Lcom/twitter/android/notificationtimeline/j;

.field private final h:Lcom/twitter/internal/android/widget/DropDownListView;

.field private final i:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final j:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040260

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    .line 46
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    const v1, 0x7f130595

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    const v1, 0x7f130596

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    const v1, 0x7f130597

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->c:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    const v1, 0x7f130598

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->d:Landroid/view/View;

    .line 50
    const v0, 0x7f12016c

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->i:I

    .line 51
    const v0, 0x7f120149

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->j:I

    .line 54
    new-instance v0, Lcom/twitter/internal/android/widget/DropDownListView;

    const v1, 0x7f010158

    invoke-direct {v0, p1, v3, v1}, Lcom/twitter/internal/android/widget/DropDownListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    .line 56
    new-instance v0, Lcom/twitter/android/notificationtimeline/j;

    invoke-direct {v0, p1}, Lcom/twitter/android/notificationtimeline/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->g:Lcom/twitter/android/notificationtimeline/j;

    .line 57
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DropDownListView;->setFocusable(Z)V

    .line 58
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    invoke-virtual {v0, v2}, Lcom/twitter/internal/android/widget/DropDownListView;->setFocusableInTouchMode(Z)V

    .line 59
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->g:Lcom/twitter/android/notificationtimeline/j;

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 60
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/DropDownListView;->setSelection(I)V

    .line 61
    new-instance v0, Landroid/widget/PopupWindow;

    const v1, 0x7f0100a6

    invoke-direct {v0, p1, v3, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    .line 63
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 64
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 65
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 66
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 69
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->d:Landroid/view/View;

    new-instance v1, Lcom/twitter/android/notificationtimeline/f;

    invoke-direct {v1, p0}, Lcom/twitter/android/notificationtimeline/f;-><init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Lcom/twitter/internal/android/widget/DropDownListView;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    return-object v0
.end method

.method static synthetic b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Landroid/view/View;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->d:Landroid/view/View;

    return-object v0
.end method

.method private b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)Landroid/widget/TextView;
    .locals 3

    .prologue
    .line 91
    sget-object v0, Lcom/twitter/android/notificationtimeline/i;->a:[I

    invoke-virtual {p1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown filter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a:Landroid/widget/TextView;

    .line 99
    :goto_0
    return-object v0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b:Landroid/widget/TextView;

    goto :goto_0

    .line 99
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->c:Landroid/widget/TextView;

    goto :goto_0

    .line 91
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic c(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->f:Landroid/widget/PopupWindow;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->e:Landroid/view/View;

    return-object v0
.end method

.method public a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->c:Landroid/widget/TextView;

    iget v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->j:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    return-void
.end method

.method public a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V
    .locals 2

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/notificationtimeline/g;

    invoke-direct {v1, p0, p1, p2}, Lcom/twitter/android/notificationtimeline/g;-><init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    return-void
.end method

.method public a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Z)V
    .locals 2

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->b(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)Landroid/widget/TextView;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_0

    .line 117
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 119
    :cond_0
    return-void

    .line 117
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/android/notificationtimeline/k;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->g:Lcom/twitter/android/notificationtimeline/j;

    new-instance v1, Lcmo;

    invoke-direct {v1, p1}, Lcmo;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/j;->a(Lcmf;)Lcmf;

    .line 133
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->h:Lcom/twitter/internal/android/widget/DropDownListView;

    new-instance v1, Lcom/twitter/android/notificationtimeline/h;

    invoke-direct {v1, p0, p1}, Lcom/twitter/android/notificationtimeline/h;-><init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/twitter/internal/android/widget/DropDownListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 140
    return-void
.end method
