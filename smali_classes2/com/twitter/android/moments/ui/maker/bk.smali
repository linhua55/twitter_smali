.class Lcom/twitter/android/moments/ui/maker/bk;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field final a:Landroid/preference/Preference;


# direct methods
.method constructor <init>(Landroid/preference/Preference;)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/twitter/android/moments/ui/maker/bk;->a:Landroid/preference/Preference;

    .line 66
    return-void
.end method


# virtual methods
.method public a(Landroid/preference/Preference$OnPreferenceClickListener;)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bk;->a:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    return-void
.end method
