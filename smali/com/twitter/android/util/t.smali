.class public Lcom/twitter/android/util/t;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:I

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJJ)V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_amount"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/t;->c:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_last_active"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/t;->d:Ljava/lang/String;

    .line 44
    iput p3, p0, Lcom/twitter/android/util/t;->a:I

    .line 45
    iput-wide p4, p0, Lcom/twitter/android/util/t;->b:J

    .line 47
    const-wide/16 v0, 0x0

    cmp-long v0, p6, v0

    if-gtz v0, :cond_0

    .line 48
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/twitter/library/client/l;

    const-string/jumbo v1, "fatigue"

    invoke-direct {v0, p1, p6, p7, v1}, Lcom/twitter/library/client/l;-><init>(Landroid/content/Context;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;
    .locals 8

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/android/util/t;

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/twitter/android/util/t;-><init>(Landroid/content/Context;Ljava/lang/String;IJJ)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/twitter/android/util/t;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 64
    iget-object v2, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    iget-object v3, p0, Lcom/twitter/android/util/t;->d:Ljava/lang/String;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 66
    iget v4, p0, Lcom/twitter/android/util/t;->a:I

    if-ge v1, v4, :cond_0

    .line 67
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget-wide v4, p0, Lcom/twitter/android/util/t;->b:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 66
    :cond_0
    return v0
.end method

.method public b()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/twitter/android/util/t;->c:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/util/t;->c:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 73
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/util/t;->d:Ljava/lang/String;

    .line 74
    invoke-static {}, Lcom/twitter/util/al;->b()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/twitter/android/util/t;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/util/t;->c:Ljava/lang/String;

    .line 84
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/util/t;->d:Ljava/lang/String;

    .line 85
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 88
    :cond_0
    return-void
.end method
