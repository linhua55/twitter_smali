.class public Lvm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/android/ar;

.field private final b:Lcom/twitter/android/ar;

.field private final c:Lcom/twitter/android/ar;


# direct methods
.method private constructor <init>(Lvo;)V
    .locals 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {p1}, Lvo;->a(Lvo;)Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-static {}, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->values()[Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v1

    invoke-static {p1}, Lvo;->b(Lvo;)Lcom/twitter/android/as;

    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lvl;->a(Landroid/content/Context;[Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/android/as;)Lcom/twitter/android/ar;

    move-result-object v0

    iput-object v0, p0, Lvm;->a:Lcom/twitter/android/ar;

    .line 24
    invoke-static {p1}, Lvo;->a(Lvo;)Landroid/content/Context;

    move-result-object v0

    .line 25
    invoke-static {}, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->values()[Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    move-result-object v1

    invoke-static {p1}, Lvo;->c(Lvo;)Lcom/twitter/android/as;

    move-result-object v2

    .line 24
    invoke-static {v0, v1, v2}, Lvl;->a(Landroid/content/Context;[Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/android/as;)Lcom/twitter/android/ar;

    move-result-object v0

    iput-object v0, p0, Lvm;->b:Lcom/twitter/android/ar;

    .line 26
    invoke-static {p1}, Lvo;->a(Lvo;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    const/4 v2, 0x0

    sget-object v3, Lcom/twitter/model/profile/ExtendedProfile$Visibility;->e:Lcom/twitter/model/profile/ExtendedProfile$Visibility;

    aput-object v3, v1, v2

    .line 27
    invoke-static {p1}, Lvo;->d(Lvo;)Lcom/twitter/android/as;

    move-result-object v2

    .line 26
    invoke-static {v0, v1, v2}, Lvl;->a(Landroid/content/Context;[Lcom/twitter/model/profile/ExtendedProfile$Visibility;Lcom/twitter/android/as;)Lcom/twitter/android/ar;

    move-result-object v0

    iput-object v0, p0, Lvm;->c:Lcom/twitter/android/ar;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lvo;Lvn;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lvm;-><init>(Lvo;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/ar;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lvm;->a:Lcom/twitter/android/ar;

    return-object v0
.end method

.method public b()Lcom/twitter/android/ar;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lvm;->b:Lcom/twitter/android/ar;

    return-object v0
.end method

.method public c()Lcom/twitter/android/ar;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lvm;->c:Lcom/twitter/android/ar;

    return-object v0
.end method
