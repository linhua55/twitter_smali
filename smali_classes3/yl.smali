.class public abstract Lyl;
.super Lwz;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<H:",
        "Lym;",
        "B:",
        "Lyl",
        "<TH;TB;>;>",
        "Lwz",
        "<",
        "Lcom/twitter/model/dms/l;",
        "TH;",
        "Lyl",
        "<TH;TB;>;>;"
    }
.end annotation


# instance fields
.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/twitter/android/dm/aa;

.field private g:Lcom/twitter/android/by;

.field private h:Lcom/twitter/library/view/m;

.field private i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private j:Lcom/twitter/library/network/aa;

.field private k:Ljava/text/SimpleDateFormat;

.field private l:Ljava/text/SimpleDateFormat;

.field private m:Ljava/text/SimpleDateFormat;

.field private n:Z

.field private o:Lcom/twitter/android/nr;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lwz;-><init>()V

    return-void
.end method

.method static synthetic a(Lyl;)Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lyl;->c:Z

    return v0
.end method

.method static synthetic b(Lyl;)Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lyl;->d:Z

    return v0
.end method

.method static synthetic c(Lyl;)Lcom/twitter/android/dm/aa;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->f:Lcom/twitter/android/dm/aa;

    return-object v0
.end method

.method static synthetic d(Lyl;)Lcom/twitter/android/by;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->g:Lcom/twitter/android/by;

    return-object v0
.end method

.method static synthetic e(Lyl;)Lcom/twitter/library/view/m;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->h:Lcom/twitter/library/view/m;

    return-object v0
.end method

.method static synthetic f(Lyl;)Lcom/twitter/library/network/aa;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->j:Lcom/twitter/library/network/aa;

    return-object v0
.end method

.method static synthetic g(Lyl;)Lcom/twitter/library/scribe/TwitterScribeAssociation;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    return-object v0
.end method

.method static synthetic h(Lyl;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->k:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic i(Lyl;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->l:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic j(Lyl;)Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->m:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic k(Lyl;)Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lyl;->n:Z

    return v0
.end method

.method static synthetic l(Lyl;)Z
    .locals 1

    .prologue
    .line 816
    iget-boolean v0, p0, Lyl;->e:Z

    return v0
.end method

.method static synthetic m(Lyl;)Lcom/twitter/android/nr;
    .locals 1

    .prologue
    .line 816
    iget-object v0, p0, Lyl;->o:Lcom/twitter/android/nr;

    return-object v0
.end method


# virtual methods
.method protected L_()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 841
    invoke-super {p0}, Lwz;->L_()V

    .line 842
    iget-object v0, p0, Lyl;->b:Lcom/twitter/model/dms/b;

    check-cast v0, Lcom/twitter/model/dms/l;

    iget-boolean v1, p0, Lyl;->d:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lyl;->e:Z

    if-nez v4, :cond_1

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/twitter/model/dms/l;->a(ZZ)Lcom/twitter/model/dms/l;

    move-result-object v0

    iput-object v0, p0, Lyl;->b:Lcom/twitter/model/dms/b;

    .line 843
    return-void

    :cond_0
    move v1, v3

    .line 842
    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public a(Lcom/twitter/android/by;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/by;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 871
    iput-object p1, p0, Lyl;->g:Lcom/twitter/android/by;

    .line 872
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Lcom/twitter/android/dm/aa;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/dm/aa;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 865
    iput-object p1, p0, Lyl;->f:Lcom/twitter/android/dm/aa;

    .line 866
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Lcom/twitter/android/nr;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/android/nr;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 919
    iput-object p1, p0, Lyl;->o:Lcom/twitter/android/nr;

    .line 920
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Lcom/twitter/library/network/aa;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/network/aa;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 889
    iput-object p1, p0, Lyl;->j:Lcom/twitter/library/network/aa;

    .line 890
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Lcom/twitter/library/scribe/TwitterScribeAssociation;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/scribe/TwitterScribeAssociation;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 883
    iput-object p1, p0, Lyl;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 884
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Lcom/twitter/library/view/m;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/library/view/m;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 877
    iput-object p1, p0, Lyl;->h:Lcom/twitter/library/view/m;

    .line 878
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Ljava/text/SimpleDateFormat;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/SimpleDateFormat;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 895
    iput-object p1, p0, Lyl;->k:Ljava/text/SimpleDateFormat;

    .line 896
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public a(Z)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 847
    iput-boolean p1, p0, Lyl;->c:Z

    .line 848
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public b(Ljava/text/SimpleDateFormat;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/SimpleDateFormat;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 901
    iput-object p1, p0, Lyl;->l:Ljava/text/SimpleDateFormat;

    .line 902
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public b(Z)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 853
    iput-boolean p1, p0, Lyl;->d:Z

    .line 854
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public bq_()Z
    .locals 1

    .prologue
    .line 834
    invoke-super {p0}, Lwz;->bq_()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->f:Lcom/twitter/android/dm/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->g:Lcom/twitter/android/by;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->h:Lcom/twitter/library/view/m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->i:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->j:Lcom/twitter/library/network/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->k:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->l:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lyl;->m:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Ljava/text/SimpleDateFormat;)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/text/SimpleDateFormat;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 907
    iput-object p1, p0, Lyl;->m:Ljava/text/SimpleDateFormat;

    .line 908
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public c(Z)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 859
    iput-boolean p1, p0, Lyl;->e:Z

    .line 860
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method

.method public d(Z)Lyl;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 913
    iput-boolean p1, p0, Lyl;->n:Z

    .line 914
    invoke-static {p0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyl;

    return-object v0
.end method
