.class public Lcom/twitter/android/moments/ui/maker/bg;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/moments/ui/maker/bk;

.field private final b:Lcom/twitter/android/moments/ui/maker/bj;


# direct methods
.method public constructor <init>(Lcom/twitter/android/moments/ui/maker/bk;Lcom/twitter/android/moments/ui/maker/bj;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bg;->a:Lcom/twitter/android/moments/ui/maker/bk;

    .line 35
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bg;->b:Lcom/twitter/android/moments/ui/maker/bj;

    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bg;->a:Lcom/twitter/android/moments/ui/maker/bk;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bh;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/bh;-><init>(Lcom/twitter/android/moments/ui/maker/bg;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bk;->a(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bg;->b:Lcom/twitter/android/moments/ui/maker/bj;

    new-instance v1, Lcom/twitter/android/moments/ui/maker/bi;

    invoke-direct {v1, p0}, Lcom/twitter/android/moments/ui/maker/bi;-><init>(Lcom/twitter/android/moments/ui/maker/bg;)V

    invoke-virtual {v0, v1}, Lcom/twitter/android/moments/ui/maker/bj;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 51
    return-void
.end method

.method public static a(Landroid/preference/PreferenceActivity;)Lcom/twitter/android/moments/ui/maker/bg;
    .locals 3

    .prologue
    .line 24
    const-string/jumbo v0, "pref_delete_moment"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 25
    new-instance v1, Lcom/twitter/android/moments/ui/maker/bk;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/ui/maker/bk;-><init>(Landroid/preference/Preference;)V

    .line 27
    new-instance v0, Lcom/twitter/android/moments/ui/maker/bj;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/twitter/android/moments/ui/maker/bj;-><init>(Landroid/content/Context;Lcom/twitter/android/moments/ui/maker/bh;)V

    .line 29
    new-instance v2, Lcom/twitter/android/moments/ui/maker/bg;

    invoke-direct {v2, v1, v0}, Lcom/twitter/android/moments/ui/maker/bg;-><init>(Lcom/twitter/android/moments/ui/maker/bk;Lcom/twitter/android/moments/ui/maker/bj;)V

    return-object v2
.end method

.method private a()V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/bg;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bg;->b()V

    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bg;->b:Lcom/twitter/android/moments/ui/maker/bj;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/maker/bj;->a()V

    .line 59
    return-void
.end method

.method static synthetic b(Lcom/twitter/android/moments/ui/maker/bg;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/maker/bg;->a()V

    return-void
.end method
