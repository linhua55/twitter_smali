.class public Laqz;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/client/SearchSuggestionController;

.field private final b:Larb;

.field private final c:Lcfg;


# direct methods
.method constructor <init>(Lcom/twitter/android/client/SearchSuggestionController;Larb;Lcfg;)V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Laqz;->a:Lcom/twitter/android/client/SearchSuggestionController;

    .line 33
    iput-object p2, p0, Laqz;->b:Larb;

    .line 34
    iput-object p3, p0, Laqz;->c:Lcfg;

    .line 35
    iget-object v0, p0, Laqz;->b:Larb;

    new-instance v1, Lara;

    invoke-direct {v1, p0}, Lara;-><init>(Laqz;)V

    invoke-virtual {v0, v1}, Larb;->a(Landroid/view/View$OnClickListener;)V

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/android/client/SearchSuggestionController;Lcfg;)Laqz;
    .locals 2

    .prologue
    .line 25
    new-instance v0, Laqz;

    invoke-static {p0}, Larb;->a(Landroid/content/Context;)Larb;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Laqz;-><init>(Lcom/twitter/android/client/SearchSuggestionController;Larb;Lcfg;)V

    return-object v0
.end method

.method static synthetic a(Laqz;)Lcom/twitter/android/client/SearchSuggestionController;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Laqz;->a:Lcom/twitter/android/client/SearchSuggestionController;

    return-object v0
.end method

.method private a()Z
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Laqz;->c:Lcfg;

    invoke-virtual {v0}, Lcfg;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Laqz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Laqz;->b:Larb;

    invoke-virtual {v0}, Larb;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setCustomView(Landroid/view/View;)V

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twitter/internal/android/widget/ToolBar;->setDisplayShowTitleEnabled(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public b(Lcom/twitter/internal/android/widget/ToolBar;)V
    .locals 2

    .prologue
    const v1, 0x7f1307cc

    .line 51
    invoke-direct {p0}, Laqz;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-virtual {p1, v1}, Lcom/twitter/internal/android/widget/ToolBar;->a(I)Lbjl;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbjl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lbjl;->b(Z)Lbjl;

    goto :goto_0
.end method
