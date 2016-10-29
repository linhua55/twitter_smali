.class public Lcom/twitter/android/notificationtimeline/a;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

.field private final b:Lcom/twitter/android/ActivityFragment;


# direct methods
.method public constructor <init>(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;Lcom/twitter/android/ActivityFragment;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    .line 18
    iput-object p2, p0, Lcom/twitter/android/notificationtimeline/a;->b:Lcom/twitter/android/ActivityFragment;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/notificationtimeline/a;)Lcom/twitter/android/ActivityFragment;
    .locals 1

    .prologue
    .line 11
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->b:Lcom/twitter/android/ActivityFragment;

    return-object v0
.end method

.method private a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->b:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    sget-object v1, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->c:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->b:Lcom/twitter/android/ActivityFragment;

    invoke-virtual {v0}, Lcom/twitter/android/ActivityFragment;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    sget-object v1, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->b:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)V

    goto :goto_0

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    sget-object v1, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    invoke-virtual {v0, v1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/twitter/android/notificationtimeline/a;->a()V

    .line 24
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    sget-object v1, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    new-instance v2, Lcom/twitter/android/notificationtimeline/b;

    invoke-direct {v2, p0}, Lcom/twitter/android/notificationtimeline/b;-><init>(Lcom/twitter/android/notificationtimeline/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    sget-object v1, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->b:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    new-instance v2, Lcom/twitter/android/notificationtimeline/c;

    invoke-direct {v2, p0}, Lcom/twitter/android/notificationtimeline/c;-><init>(Lcom/twitter/android/notificationtimeline/a;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V

    .line 38
    sget-object v0, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;->c:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;

    .line 39
    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    new-instance v2, Lcom/twitter/android/notificationtimeline/d;

    invoke-direct {v2, p0}, Lcom/twitter/android/notificationtimeline/d;-><init>(Lcom/twitter/android/notificationtimeline/a;)V

    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-virtual {v1, v0, p1}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate$Filter;Z)V

    .line 47
    new-instance v0, Lcom/twitter/android/notificationtimeline/k;

    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/a;->b:Lcom/twitter/android/ActivityFragment;

    const v2, 0x7f0a05db

    .line 48
    invoke-virtual {v1, v2}, Lcom/twitter/android/ActivityFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/notificationtimeline/e;

    invoke-direct {v2, p0}, Lcom/twitter/android/notificationtimeline/e;-><init>(Lcom/twitter/android/notificationtimeline/a;)V

    invoke-direct {v0, v1, v2}, Lcom/twitter/android/notificationtimeline/k;-><init>(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 54
    iget-object v1, p0, Lcom/twitter/android/notificationtimeline/a;->a:Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;

    invoke-static {v0}, Lcom/twitter/util/collection/r;->b(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twitter/android/notificationtimeline/FilterBarViewDelegate;->a(Ljava/util/List;)V

    .line 55
    return-void
.end method
