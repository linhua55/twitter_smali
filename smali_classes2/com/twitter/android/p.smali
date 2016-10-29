.class Lcom/twitter/android/p;
.super Lcom/twitter/library/client/ad;
.source "Twttr"


# instance fields
.field final synthetic a:Lcom/twitter/android/ActivityFragment;


# direct methods
.method private constructor <init>(Lcom/twitter/android/ActivityFragment;)V
    .locals 0

    .prologue
    .line 875
    iput-object p1, p0, Lcom/twitter/android/p;->a:Lcom/twitter/android/ActivityFragment;

    invoke-direct {p0}, Lcom/twitter/library/client/ad;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/android/ActivityFragment;Lcom/twitter/android/l;)V
    .locals 0

    .prologue
    .line 875
    invoke-direct {p0, p1}, Lcom/twitter/android/p;-><init>(Lcom/twitter/android/ActivityFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/library/client/Session;)V
    .locals 4

    .prologue
    .line 878
    iget-object v0, p0, Lcom/twitter/android/p;->a:Lcom/twitter/android/ActivityFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/ActivityFragment;->a(Lcom/twitter/android/ActivityFragment;Z)Z

    .line 879
    iget-object v0, p0, Lcom/twitter/android/p;->a:Lcom/twitter/android/ActivityFragment;

    invoke-static {v0}, Lcom/twitter/android/ActivityFragment;->m(Lcom/twitter/android/ActivityFragment;)Lcom/twitter/android/util/ah;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/p;->a:Lcom/twitter/android/ActivityFragment;

    invoke-static {v1}, Lcom/twitter/android/ActivityFragment;->l(Lcom/twitter/android/ActivityFragment;)I

    move-result v1

    invoke-virtual {p1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/twitter/android/util/ah;->a(IJ)V

    .line 880
    invoke-super {p0, p1}, Lcom/twitter/library/client/ad;->a(Lcom/twitter/library/client/Session;)V

    .line 881
    return-void
.end method
